.class Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "DrawableCompatJellybeanMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatJellybeanMr1"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 5

    .line 67
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69
    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string v3, "getLayoutDirection"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 70
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DrawableCompatJellybeanMr1"

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    .line 72
    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_0
    sput-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    .line 77
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 79
    :try_start_1
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    const-string v0, "DrawableCompatJellybeanMr1"

    const-string v1, "Failed to invoke getLayoutDirection() via reflection"

    .line 81
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 82
    sput-object p0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 6

    .line 43
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 45
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v3, "setLayoutDirection"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 46
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 47
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DrawableCompatJellybeanMr1"

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    .line 49
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :goto_0
    sput-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    .line 54
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 56
    :try_start_1
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p0

    const-string p1, "DrawableCompatJellybeanMr1"

    const-string v0, "Failed to invoke setLayoutDirection(int) via reflection"

    .line 59
    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 60
    sput-object p0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    return v1
.end method
