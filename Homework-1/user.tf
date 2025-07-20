resource "aws_iam_user" "jenny" {
  name = "jenny"
  }

  resource "aws_iam_user" "rose" {
  name = "rose"
  }

  resource "aws_iam_user" "lisa" {
  name = "lisa"
  }

  resource "aws_iam_user" "jisoo" {
  name = "jisoo"
  }

  resource "aws_iam_user" "jihyo" {
  name = "jihyo"
  }

  resource "aws_iam_user" "sana" {
  name = "sana"
  }

  resource "aws_iam_user" "mono" {
  name = "mono"
  }

  resource "aws_iam_user" "dahyun" {
  name = "dahyun"
  }

  resource "aws_iam_user" "miyeon" {
  name = "miyeon"
  }

 resource "aws_iam_user" "mina" {
  name = "mina"
  }

resource "aws_iam_group" "blackpink" {
  name = "blackpink"
}

resource "aws_iam_group" "twice" {
  name = "twice"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
   aws_iam_user.jenny.name,
   aws_iam_user.rose.name,
   aws_iam_user.lisa.name,
   aws_iam_user.jisoo.name,
   aws_iam_user.miyeon.name
  ]

  group = aws_iam_group.blackpink.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership"

  users = [
   aws_iam_user. jihyo.name,
   aws_iam_user.sana.name,
   aws_iam_user.mono.name,
   aws_iam_user.dahyun.name,
   aws_iam_user.mina.name
  ]

  group = aws_iam_group.twice.name
}