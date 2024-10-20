open Render
open AncestorSpacy

module Hero = Home_Hero

module Styles = {
  open Emotion

  let createAccount = css({
    "button[aria-haspopup=dialog]": {
      "outline": "none",
      "border": "none",
      "background": "none",
    },
  })
}

module Query = %relay(`
query HomeQuery {
  usersConnection {
    edges {
      node {
        id
        username
      }
    }
  }
}
`)

let getServerSideProps = context => {
  context->RelaySSR.executeQueryEnvironment(environment => {
    Query.fetchPromised(~environment, ~variables=(), ())
  })
}

let default = () => {
  let fakeArticles = [1, 2, 3, 4, 5, 6]
  let queryData = Query.use(~variables=(), ())
  Js.log(queryData)
  <Box p=[xs(4.)]>
    <Hero>
      <Hero.Title />
      <Box maxW=[xs(508->#px)] width=[xs(100.0->#pct)]>
        <Hero.Text />
      </Box>
      <Box maxW=[xs(178->#px)] width=[xs(100.0->#pct)] className=Styles.createAccount>
        <Modal.Root>
          <Modal.Trigger>
            <Button block=true label={"Create account"} />
          </Modal.Trigger>
          <Modal.Overlay />
          <SignUpModal />
        </Modal.Root>
      </Box>
    </Hero>
    <Stack gap=[xs(#one(8.0))] mt=[xs(14.0)] alignItems=[xs(#center)]>
      <Grid spacing=[xs(4.0)]>
        {fakeArticles->map((_, key) => {
          <Box columns=[xs(#6)] key>
            <ArticleCard
              title="Toward a Journalistic Ethic of Citation"
              description="After The New York Times published its extensive report on the history of Haiti's impoverishment at the hands."
              authorName="Jeff Jarvis"
              readingTime=3
              publishedDate="May 6 2022"
            />
          </Box>
        })}
      </Grid>
      <Button label="Load more" />
    </Stack>
  </Box>
}
