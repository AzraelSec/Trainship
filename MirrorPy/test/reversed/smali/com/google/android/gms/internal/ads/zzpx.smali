.class public final Lcom/google/android/gms/internal/ads/zzpx;
.super Ljava/lang/Object;


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    .line 8
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    return-void
.end method


# virtual methods
.method public final capacity()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    return v0
.end method

.method public final limit()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    return v0
.end method

.method public final readInt()I
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final readLong()J
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final readUnsignedByte()I
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    return-void
.end method

.method public final reset(I)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzc([BI)V

    return-void
.end method

.method public final setPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->checkArgument(Z)V

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    return-void
.end method

.method public final zzbk(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpo;->checkArgument(Z)V

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    return-void
.end method

.method public final zzbl(I)V
    .locals 1

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpx;->setPosition(I)V

    return-void
.end method

.method public final zzbm(I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 56
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 57
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    aget-byte v0, v1, v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 59
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 60
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    return-object v1
.end method

.method public final zzc([BI)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    return-void
.end method

.method public final zze([BII)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    return-void
.end method

.method public final zzhb()I
    .locals 2

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzhc()I
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzhd()J
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzhe()J
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzhf()I
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    return v0
.end method

.method public final zzhg()I
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzhh()J
    .locals 5

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzhi()Ljava/lang/String;
    .locals 5

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpx;->zzhb()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    .line 65
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    sub-int v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 68
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    .line 69
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->limit:I

    if-ge v0, v2, :cond_2

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->position:I

    :cond_2
    return-object v1
.end method
