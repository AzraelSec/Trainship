.class public final Lcom/google/android/gms/internal/ads/zzpw;
.super Ljava/lang/Object;


# instance fields
.field private data:[B

.field private zzbhx:I

.field private zzbhy:I

.field private zzbhz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzpw;-><init>([BI)V

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->data:[B

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhz:I

    return-void
.end method


# virtual methods
.method public final zzbj(I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 11
    :cond_0
    div-int/lit8 v1, p1, 0x8

    move v2, p1

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    const/16 v5, 0xff

    const/16 v6, 0x8

    if-ge p1, v1, :cond_2

    .line 13
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    if-eqz v7, :cond_1

    .line 14
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzpw;->data:[B

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    aget-byte v7, v7, v8

    and-int/2addr v7, v5

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    shl-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzpw;->data:[B

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    sub-int/2addr v6, v9

    ushr-int v6, v8, v6

    or-int/2addr v6, v7

    goto :goto_1

    .line 15
    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpw;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    aget-byte v6, v6, v7

    :goto_1
    add-int/lit8 v2, v2, -0x8

    and-int/2addr v5, v6

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    .line 18
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-lez v2, :cond_5

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    add-int/2addr p1, v2

    rsub-int/lit8 v1, v2, 0x8

    shr-int v1, v5, v1

    int-to-byte v1, v1

    if-le p1, v6, :cond_4

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    aget-byte v2, v2, v7

    and-int/2addr v2, v5

    add-int/lit8 v7, p1, -0x8

    shl-int/2addr v2, v7

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzpw;->data:[B

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    add-int/2addr v8, v4

    aget-byte v7, v7, v8

    and-int/2addr v5, v7

    rsub-int/lit8 v7, p1, 0x10

    shr-int/2addr v5, v7

    or-int/2addr v2, v5

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    :cond_3
    :goto_2
    move v3, v1

    goto :goto_3

    .line 26
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    aget-byte v2, v2, v7

    and-int/2addr v2, v5

    rsub-int/lit8 v5, p1, 0x8

    shr-int/2addr v2, v5

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    if-ne p1, v6, :cond_3

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    goto :goto_2

    .line 29
    :goto_3
    rem-int/2addr p1, v6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    .line 31
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    if-ltz p1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    if-ltz p1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    if-ge p1, v6, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhz:I

    if-lt p1, v1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhx:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhz:I

    if-ne p1, v1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzbhy:I

    if-nez p1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->checkState(Z)V

    return v3
.end method
