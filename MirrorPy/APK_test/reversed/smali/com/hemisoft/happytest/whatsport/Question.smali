.class public Lcom/hemisoft/happytest/whatsport/Question;
.super Ljava/lang/Object;
.source "Question.java"


# instance fields
.field private mAnswerOne:Ljava/lang/String;

.field private mAnswerThree:Ljava/lang/String;

.field private mAnswerTwo:Ljava/lang/String;

.field private mAnswerValueOne:I

.field private mAnswerValueThree:I

.field private mAnswerValueTwo:I

.field private mQuestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/hemisoft/happytest/whatsport/Question;->mQuestion:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/hemisoft/happytest/whatsport/Question;->mAnswerOne:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/hemisoft/happytest/whatsport/Question;->mAnswerTwo:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/hemisoft/happytest/whatsport/Question;->mAnswerThree:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public mGetAnswerOne()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/Question;->mAnswerOne:Ljava/lang/String;

    return-object v0
.end method

.method public mGetAnswerThree()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/Question;->mAnswerThree:Ljava/lang/String;

    return-object v0
.end method

.method public mGetAnswerTwo()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/Question;->mAnswerTwo:Ljava/lang/String;

    return-object v0
.end method

.method public mGetQuestion()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/Question;->mQuestion:Ljava/lang/String;

    return-object v0
.end method
