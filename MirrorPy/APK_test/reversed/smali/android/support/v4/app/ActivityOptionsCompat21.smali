.class Landroid/support/v4/app/ActivityOptionsCompat21;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 1

    .line 37
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat21;

    .line 38
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 1

    .line 43
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat21;

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 1

    .line 55
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat21;

    .line 56
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 4

    if-eqz p1, :cond_0

    .line 64
    array-length v0, p1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    .line 65
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 66
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :cond_1
    new-instance p1, Landroid/support/v4/app/ActivityOptionsCompat21;

    .line 70
    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object p1
.end method

.method public static makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 2

    .line 74
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat21;

    .line 75
    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 1

    .line 49
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat21;

    .line 50
    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat21;)V
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object p1, p1, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    return-void
.end method
