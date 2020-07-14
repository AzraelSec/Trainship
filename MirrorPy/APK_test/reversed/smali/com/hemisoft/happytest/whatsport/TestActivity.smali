.class public Lcom/hemisoft/happytest/whatsport/TestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field public position:I

.field public questions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hemisoft/happytest/whatsport/Question;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    return-void
.end method

.method private animate()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f070084

    .line 169
    invoke-virtual {p0, v1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    .line 170
    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 152
    iget p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->animate()V

    .line 160
    iget p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    .line 161
    iget p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->setContent(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090031

    .line 37
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->setContentView(I)V

    const p1, 0x7f07001a

    .line 39
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f07001d

    .line 40
    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f07001c

    .line 41
    invoke-virtual {p0, v1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0067

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    new-instance v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hemisoft/happytest/whatsport/Question;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 82
    iget p1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->position:I

    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->setContent(I)V

    return-void
.end method

.method public setContent(I)V
    .locals 8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 92
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v1, "ca-app-pub-4239436150719860/8717222418"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 98
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 99
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v1, "ca-app-pub-4239436150719860/2948098409"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    .line 105
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 106
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v1, "ca-app-pub-4239436150719860/6478071882"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->mInterstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    const v0, 0x7f07005a

    .line 114
    invoke-virtual {p0, v0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070025

    .line 115
    invoke-virtual {p0, v1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f07001a

    .line 116
    invoke-virtual {p0, v2}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f07001d

    .line 117
    invoke-virtual {p0, v3}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f07001c

    .line 118
    invoke-virtual {p0, v4}, Lcom/hemisoft/happytest/whatsport/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hemisoft/happytest/whatsport/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {v1}, Lcom/hemisoft/happytest/whatsport/Question;->mGetQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {v0}, Lcom/hemisoft/happytest/whatsport/Question;->mGetAnswerOne()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {v0}, Lcom/hemisoft/happytest/whatsport/Question;->mGetAnswerTwo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/TestActivity;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hemisoft/happytest/whatsport/Question;

    invoke-virtual {p1}, Lcom/hemisoft/happytest/whatsport/Question;->mGetAnswerThree()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hemisoft/happytest/whatsport/LoadingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/hemisoft/happytest/whatsport/TestActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
