import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# читаем данные
df = pd.read_csv('benchmark.txt', names=['N', 'scalar', 'sse', 'two', 'four'])

# строим график времени
plt.figure(figsize=(10, 6))
plt.plot(df['N'], df['scalar'], 'o-', label='Скаляр', linewidth=2, markersize=8)
plt.plot(df['N'], df['sse'], 's-', label='SSE asm', linewidth=2, markersize=8)
plt.plot(df['N'], df['two'], '^-', label='2 суммы', linewidth=2, markersize=8)
plt.plot(df['N'], df['four'], 'd-', label='4 суммы', linewidth=2, markersize=8)

plt.xscale('log')
plt.yscale('log')
plt.xlabel('Размер массива N')
plt.ylabel('Время (секунды)')
plt.title('Сравнение методов суммирования массива')
plt.legend()
plt.grid(True, alpha=0.3)
plt.savefig('time_comparison.png', dpi=300, bbox_inches='tight')
plt.show()

# график ускорения относительно скаляра
plt.figure(figsize=(10, 6))
plt.plot(df['N'], df['scalar']/df['sse'], 's-', label='SSE / скаляр', linewidth=3)
plt.plot(df['N'], df['scalar']/df['two'], '^-', label='2 суммы / скаляр', linewidth=3)
plt.plot(df['N'], df['scalar']/df['four'], 'd-', label='4 суммы / скаляр', linewidth=3)

plt.xscale('log')
plt.xlabel('Размер массива N')
plt.ylabel('Ускорение (раз)')
plt.title('Ускорение относительно скалярного метода')
plt.legend()
plt.grid(True, alpha=0.3)
plt.savefig('speedup.png', dpi=300, bbox_inches='tight')
plt.show()

print(df)
