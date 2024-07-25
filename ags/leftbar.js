const BarLeft = () =>
  Widget.Window({
    name: "barleft",
    anchor: ["top", "left"],
    // margins: [10, 50, 10, 10],
    child: Widget.Box({
      children: [
        Widget.Label({
          hpack: "center",
          css: "color: blue",
          label: "left bar",
        }),
      ],
    }),
  });

export default BarLeft;
