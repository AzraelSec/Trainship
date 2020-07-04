.class public Lcom/hemisoft/happytest/whatsport/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private mImageResourceId:I

.field private mResultAnswer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/hemisoft/happytest/whatsport/Result;->mResultAnswer:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/hemisoft/happytest/whatsport/Result;->mImageResourceId:I

    return-void
.end method


# virtual methods
.method public mGetImageResourceId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/hemisoft/happytest/whatsport/Result;->mImageResourceId:I

    return v0
.end method

.method public mGetResultAnswer()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/Result;->mResultAnswer:Ljava/lang/String;

    return-object v0
.end method
