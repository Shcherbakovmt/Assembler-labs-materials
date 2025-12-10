import matplotlib.pyplot as plt

# Списки имён файлов и цветов/стилей
filenames = ['data_dt/dt=0.01.txt', 'data_dt/dt=0.005.txt', 'data_dt/dt=0.001.txt', 'data_dt/dt=0.0005.txt', 'data_dt/dt=0.0001.txt']

labels = ['dt=0.01', 'dt=0.005', 'dt=0.001', 'dt=0.0005', 'dt=0.0001']
colors = ['b', 'g', 'r', 'y', 'm']  # blue, green, red

# Создаем общую фигуру
plt.figure(figsize=(8, 6))

for fname, label, color in zip(filenames, labels, colors):
    x, y = [], []
    with open(fname, 'r') as f:
        for line in f:
            if line.strip():
                vals = line.split()
                x.append(float(vals[0]))
                y.append(float(vals[1]))
    plt.plot(y, x, color=color, label=label)

plt.xlabel('x')
plt.ylabel('y')
plt.title('Графики из разных файлов')
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.savefig('all_graphs.png')  # Сохраняем рисунок в файл
plt.show()
