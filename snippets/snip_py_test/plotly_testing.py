import plotly.graph_objects as go
from plotly.subplots import make_subplots
import numpy as np

time = np.linspace(0, 1, 1000)
data = np.array(
        [np.hstack(([0], np.random.normal(size=999))) for i in range(50)]
        )
data *= np.sqrt(time[1]-time[0])
data = np.cumsum(data, axis=1)

# testing the ptly_fig snippet
fig = go.Figure()
for d in data:
    _ = fig.add_trace(
            go.Scatter(
                x=time,
                y=d,
                )
            )
_ = fig.update_xaxes(
        title={
            'text': 'time',
            })
_ = fig.update_yaxes(
        title={
            'text': '',
            })
_ = fig.update_layout(
        title={
            'text': 'brownian motions',
            })
fig.show()
#--------------------------------------------------

# testing the ptly_subplot snippet
nrow, ncol = 3, 3
rcs = []  # row and column subplot pairs
for i in range(1, nrow + 1):
    for j in range(1, ncol + 1):
        rcs.append((i, j))
fig = make_subplots(rows=nrow, cols=ncol)
for i, rc in enumerate(rcs):
    _ = fig.add_trace(
            go.Scatter(
                x=time,
                y=data[i],
                ),
            row=rc[0], col=rc[1]
            )
    _ = fig.update_xaxes(
            title={
                'text':'time',
                },
            row=rc[0], col=rc[1])
    _ = fig.update_yaxes(
            title={
                'text':'',
                },
            row=rc[0], col=rc[1])
_ = fig.update_layout(
        title={
            'text':'brownian motion',
            })
fig.show()
