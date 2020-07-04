.class public Lcom/hemisoft/happytest/whatsport/ResultActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ResultActivity.java"


# instance fields
.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hemisoft/happytest/whatsport/Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    return-void
.end method

.method private setResultContent(I)V
    .locals 5

    const v0, 0x7f07005f

    .line 93
    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07005d

    .line 95
    invoke-virtual {p0, v1}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {v3}, Lcom/hemisoft/happytest/whatsport/Result;->mGetResultAnswer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p1}, Lcom/hemisoft/happytest/whatsport/Result;->mGetImageResourceId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hemisoft/happytest/whatsport/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09002c

    .line 27
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->setContentView(I)V

    const p1, 0x7f07005c

    .line 29
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 30
    new-instance v0, Lcom/hemisoft/happytest/whatsport/ResultActivity$1;

    invoke-direct {v0, p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity$1;-><init>(Lcom/hemisoft/happytest/whatsport/ResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07004b

    .line 38
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance v0, Lcom/hemisoft/happytest/whatsport/ResultActivity$2;

    invoke-direct {v0, p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity$2;-><init>(Lcom/hemisoft/happytest/whatsport/ResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060055

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06005d

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06005e

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06005f

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060060

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060061

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060062

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060063

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060056

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060057

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060058

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060059

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06005a

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Result;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06005b

    invoke-direct {v0, v1, v2}, Lcom/hemisoft/happytest/whatsport/Result;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity;->results:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->setResultContent(I)V

    return-void
.end method
