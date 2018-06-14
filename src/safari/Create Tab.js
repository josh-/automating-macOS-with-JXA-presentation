const Safari = Application('Safari')
const firstWindow = Safari.windows[0]
const tab = Safari.Tab({url: "https://joshparnham.com"})
firstWindow.tabs.push(tab)
firstWindow.currentTab = tab
