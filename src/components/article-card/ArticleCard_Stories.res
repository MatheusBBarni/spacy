open AncestorSpacy

let default = Storybook.make(
  ~title="Components/ArticleCard",
  ~component={
    () => {
      <Box maxW=[xs(400->#px)]>
        <ArticleCard
          title="Toward a Journalistic Ethic of Citation"
          description="After The New York Times published its extensive report on the history of Haiti's impoverishment at the hands."
          authorName="Jeff Jarvis"
          readingTime=3
          publishedDate="May 6 2022"
        />
      </Box>
    }
  },
  (),
)
