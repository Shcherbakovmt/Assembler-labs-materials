import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# Читаем данные оптимизаций
df_o0 = pd.read_csv('scalar_o0.txt', names=['N', 'O0'])
df_o1 = pd.read_csv('scalar_o1.txt', names=['N', 'O1'])
df_o2 = pd.read_csv('scalar_o2.txt', names=['N', 'O2'])
df_o3 = pd.read_csv('scalar_o3.txt', names=['N', 'O3'])

# Читаем данные SSE + суммы
df_methods = pd.read_csv('benchmark.txt', 
                        names=['N', 'scalar', 'sse', 'two', 'four', 'eight', 'sixteen'])

# Объединяем данные
df_all = df_methods.merge(df_o0[['N', 'O0']], on='N', how='left')
df_all = df_all.merge(df_o1[['N', 'O1']], on='N', how='left')
df_all = df_all.merge(df_o2[['N', 'O2']], on='N', how='left')
df_all = df_all.merge(df_o3[['N', 'O3']], on='N', how='left')

print("=== ОБЪЕДИНЁННЫЕ ДАННЫЕ ===")
print(df_all.round(6))

# 1. ГРАФИК ВРЕМЕНИ (лог-лог)
plt.figure(figsize=(16, 12))

plt.subplot(2, 2, 1)
# Оптимизации скаляра
plt.plot(df_all['N'], df_all['O0'], 'o-', label='O0 скаляр', linewidth=3, markersize=8)
plt.plot(df_all['N'], df_all['O1'], '^-', label='O1 скаляр', linewidth=3, markersize=8)
plt.plot(df_all['N'], df_all['O2'], 's-', label='O2 скаляр', linewidth=3, markersize=8)
plt.plot(df_all['N'], df_all['O3'], 'd-', label='O3 скаляр', linewidth=3, markersize=8)
plt.xscale('log')
plt.yscale('log')
plt.xlabel('Размер массива N (лог)')
plt.ylabel('Время (секунды, лог)')
plt.title('Оптимизации компилятора (скаляр)')
plt.legend()
plt.grid(True, alpha=0.3)

# 2. Множественные суммы + SSE (лог-лог)
plt.subplot(2, 2, 2)
plt.plot(df_all['N'], df_all['scalar'], 'o-', label='1 сумма', linewidth=3, markersize=10)
plt.plot(df_all['N'], df_all['two'], '^-', label='2 суммы', linewidth=3, markersize=10)
plt.plot(df_all['N'], df_all['four'], 'd-', label='4 суммы', linewidth=3, markersize=10)
plt.plot(df_all['N'], df_all['eight'], 'v-', label='8 сумм', linewidth=3, markersize=10)
plt.plot(df_all['N'], df_all['sixteen'], '*-', label='16 сумм', linewidth=3, markersize=10)
plt.plot(df_all['N'], df_all['sse'], 's-', label='SSE asm', linewidth=4, markersize=12, color='red')
plt.xscale('log')
plt.yscale('log')
plt.xlabel('Размер массива N (лог)')
plt.ylabel('Время (секунды, лог)')
plt.title('Ручные оптимизации + SSE')
plt.legend()
plt.grid(True, alpha=0.3)

# 3. УСКОРЕНИЕ ОТНОСИТЕЛЬНО O0 (лог X, линейный Y)
plt.subplot(2, 2, 3)
plt.plot(df_all['N'], df_all['O0']/df_all['O3'], 'd-', label='O3/O0', linewidth=4, markersize=10)
plt.plot(df_all['N'], df_all['O0']/df_all['sse'], 's-', label='SSE/O0', linewidth=4, markersize=12, color='red')
plt.plot(df_all['N'], df_all['O0']/df_all['sixteen'], '*-', label='16 сумм/O0', linewidth=3, markersize=10)
plt.xscale('log')
plt.xlabel('Размер массива N (лог)')
plt.ylabel('Ускорение относительно O0 (раз)')
plt.title('Ускорение относительно скаляра O0')
plt.legend()
plt.grid(True, alpha=0.3)

# 4. МАКСИМАЛЬНОЕ УСКОРЕНИЕ (таблица)
plt.subplot(2, 2, 4)
speedup_table = pd.DataFrame({
    'Метод': ['O3 скаляр', '16 сумм', '8 сумм', 'SSE asm'],
    f'N=16': [df_all['O0'].iloc[0]/df_all['O3'].iloc[0],
              df_all['O0'].iloc[0]/df_all['sixteen'].iloc[0],
              df_all['O0'].iloc[0]/df_all['eight'].iloc[0],
              df_all['O0'].iloc[0]/df_all['sse'].iloc[0]],
    f'N=160000': [df_all['O0'].iloc[-1]/df_all['O3'].iloc[-1],
                  df_all['O0'].iloc[-1]/df_all['sixteen'].iloc[-1],
                  df_all['O0'].iloc[-1]/df_all['eight'].iloc[-1],
                  df_all['O0'].iloc[-1]/df_all['sse'].iloc[-1]]
}).round(1)

table = plt.table(cellText=speedup_table.iloc[:,1:].values,
                  colLabels=speedup_table.columns[1:],
                  rowLabels=speedup_table['Метод'],
                  cellLoc='center', loc='center')
table.auto_set_font_size(False)
table.set_fontsize(10)
table.scale(1, 2)
plt.axis('off')
plt.title('Максимальные ускорения относительно O0')

plt.tight_layout()
plt.savefig('full_analysis.png', dpi=300, bbox_inches='tight')
plt.show()

# Табличный вывод
print("\n=== МАКСИМАЛЬНЫЕ УСКОРЕНИЯ ОТНОСИТЕЛЬНО O0 ===")
print(speedup_table.to_string(index=False))

print("\n=== ОПТИМИЗАЦИИ КОМПИЛЯТОРА ===")
opt_speedup = df_all['O0']/df_all['O3']
print(f"O3 даёт ускорение {opt_speedup.mean():.1f}x относительно O0")

print("\n=== РУЧНЫЕ ОПТИМИЗАЦИИ ===")
sse_speedup = df_all['O0']/df_all['sse']
print(f"SSE даёт ускорение {sse_speedup.mean():.1f}x относительно O0")
print(f"16 сумм: {df_all['O0']/df_all['sixteen'].mean():.1f}x")
