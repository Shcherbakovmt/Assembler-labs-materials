import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# читаем данные
df = pd.read_csv('benchmark.txt', names=['N', 'scalar', 'sse', 'two', 'four', 'eight', 'sixteen'])

# 1. ЛОГАРИФМИЧЕСКИЙ график времени (лог-лог)
plt.figure(figsize=(14, 10))
plt.subplot(2, 1, 1)
plt.plot(df['N'], df['scalar'], 'o-', label='1 сумма', linewidth=3, markersize=10)
plt.plot(df['N'], df['two'], '^-', label='2 суммы', linewidth=3, markersize=10)
plt.plot(df['N'], df['four'], 'd-', label='4 суммы', linewidth=3, markersize=10)
plt.plot(df['N'], df['eight'], 'v-', label='8 сумм', linewidth=3, markersize=10)
plt.plot(df['N'], df['sixteen'], '*-', label='16 сумм', linewidth=3, markersize=10)
plt.plot(df['N'], df['sse'], 's-', label='SSE asm', linewidth=4, markersize=12, color='red')

plt.xscale('log')
plt.yscale('log')
plt.xlabel('Размер массива N (лог)', fontsize=14)
plt.ylabel('Время (секунды, лог)', fontsize=14)
plt.title('Сравнение времени выполнения (логарифмический масштаб)', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True, alpha=0.3)
plt.xticks(df['N'], rotation=45)

# 2. ЛОГАРИФМИЧЕСКИЙ X + ЛИНЕЙНЫЙ Y график ускорения
plt.subplot(2, 1, 2)
plt.plot(df['N'], df['scalar']/df['sse'], 's-', label='SSE / скаляр', linewidth=4, markersize=12, color='red')
plt.plot(df['N'], df['scalar']/df['two'], 'o-', label='2 суммы / скаляр', linewidth=3, markersize=10)
plt.plot(df['N'], df['scalar']/df['four'], '^-', label='4 суммы / скаляр', linewidth=3, markersize=10)
plt.plot(df['N'], df['scalar']/df['eight'], 'v-', label='8 сумм / скаляр', linewidth=3, markersize=10)
plt.plot(df['N'], df['scalar']/df['sixteen'], '*-', label='16 сумм / скаляр', linewidth=3, markersize=10)

plt.xscale('log')  # X логарифмический (N)
# plt.yscale('log')  # Y ЛИНЕЙНЫЙ (ускорение)
plt.xlabel('Размер массива N (лог)', fontsize=14)
plt.ylabel('Ускорение относительно скаляра (раз)', fontsize=14)
plt.title('Ускорение методов относительно скалярного (линейный Y)', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True, alpha=0.3)
plt.xticks(df['N'], rotation=45)

plt.tight_layout()
plt.savefig('full_comparison.png', dpi=300, bbox_inches='tight')
plt.show()

# 3. Таблица результатов
print("=== РЕЗУЛЬТАТЫ БЕНЧМАРКА ===")
print(df.round(6).to_string(index=False))

print("\n=== УСКОРЕНИЯ ОТНОСИТЕЛЬНО СКАЛЯРА ===")
speedup_df = df[['N']].copy()
speedup_df['SSE'] = df['scalar']/df['sse']
speedup_df['2sums'] = df['scalar']/df['two']
speedup_df['4sums'] = df['scalar']/df['four']
speedup_df['8sums'] = df['scalar']/df['eight']
speedup_df['16sums'] = df['scalar']/df['sixteen']
print(speedup_df.round(1).to_string(index=False))

# 4. Максимальные ускорения
print("\n=== МАКСИМАЛЬНЫЕ УСКОРЕНИЯ ===")
print(f"SSE:     {speedup_df['SSE'].max():.1f}x (при N={df['N'].iloc[speedup_df['SSE'].idxmax()]})")
print(f"16 сумм: {speedup_df['16sums'].max():.1f}x (при N={df['N'].iloc[speedup_df['16sums'].idxmax()]})")
print(f"8 сумм:  {speedup_df['8sums'].max():.1f}x (при N={df['N'].iloc[speedup_df['8sums'].idxmax()]})")
