.class public final Lcom/google/android/gms/internal/ads/zzqh;
.super Ljava/lang/Object;


# instance fields
.field private final height:I

.field private final width:I

.field public final zzakx:I

.field public final zzbhq:F

.field public final zzzl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzzl:Ljava/util/List;

    .line 28
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzakx:I

    .line 29
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqh;->width:I

    .line 30
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzqh;->height:I

    .line 31
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzbhq:F

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzpx;)Lcom/google/android/gms/internal/ads/zzqh;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfx;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zzbl(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_3

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(Lcom/google/android/gms/internal/ads/zzpx;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->readUnsignedByte()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzqh;->zzh(Lcom/google/android/gms/internal/ads/zzpx;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    if-lez v0, :cond_2

    .line 18
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 19
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, v4, p0}, Lcom/google/android/gms/internal/ads/zzpu;->zzd([BII)Lcom/google/android/gms/internal/ads/zzpv;

    move-result-object p0

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->width:I

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->height:I

    .line 22
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbhq:F

    move v7, p0

    move v5, v0

    move v6, v1

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 23
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzqh;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzqh;-><init>(Ljava/util/List;IIIF)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfx;

    const-string v1, "Error parsing AVC config"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzfx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzpx;)[B
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->readUnsignedShort()I

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->getPosition()I

    move-result v1

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zzbl(I)V

    .line 36
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzpp;->zzc([BII)[B

    move-result-object p0

    return-object p0
.end method
