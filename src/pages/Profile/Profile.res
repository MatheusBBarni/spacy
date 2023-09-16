open Render
open AncestorSpacy

let name = "Matheus Barni"
let fakeArticles = [1, 2, 3, 4, 5, 6]

let default = () => {
  <Box display=[xs(#flex)] justifyContent=[xs(#center)] mt=[xs(14.0)] width=[xs(100.0->#pct)]>
    <Box maxW=[xs(992->#px)] width=[xs(100.0->#pct)] position=[xs(#relative)]>
      <Stack
        direction=[xs(#horizontal)]
        alignItems=[xs(#center)]
        gap=[xs(#one(3.0))]
        position=[xs(#absolute)]
        right=[xs(#zero)]
        top=[xs(80->#px)]>
        <Button label="New article" />
        <Modal.Root>
          <Modal.Trigger asChild=true>
            <Typography href="#" cursor=[xs(#pointer)] fontSize=[xs(1.6->#rem)]>
              {"Edit Profile"->s}
            </Typography>
          </Modal.Trigger>
          <Modal.Overlay />
          <UpdateProfileModal />
        </Modal.Root>
      </Stack>
      <Stack alignItems=[xs(#center)]>
        <Avatar name size=2.5 />
        <Typography
          m=[xs(0.0)]
          mt=[xs(3.0)]
          fontSize=[xs(1.8->#rem)]
          fontWeight=[xs(#700)]
          color=[xs(#primary300)]
          letterSpacing=[xs(-0.02->#em)]
          textAlign=[xs(#center)]
          tag=#span>
          {"@mbarnib"->s}
        </Typography>
        <Typography
          m=[xs(0.0)]
          mt=[xs(1.0)]
          fontSize=[xs(2.8->#rem)]
          fontWeight=[xs(#700)]
          color=[xs(#primary700)]
          letterSpacing=[xs(-0.02->#em)]
          textAlign=[xs(#center)]
          tag=#h1>
          {name->s}
        </Typography>
        <Typography
          m=[xs(0.0)]
          mt=[xs(2.0)]
          maxW=[xs(452->#px)]
          fontSize=[xs(1.8->#rem)]
          fontWeight=[xs(#400)]
          color=[xs(#primary300)]
          letterSpacing=[xs(-0.02->#em)]
          lineHeight=[xs(2.8->#rem)]
          textAlign=[xs(#center)]
          tag=#p>
          {"Frontend performance enthusiast and Fine-Grained Reactivity super fan. Author of the SolidJS UI library and MarkoJS Core Team Memberr"->s}
        </Typography>
      </Stack>
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
  </Box>
}
