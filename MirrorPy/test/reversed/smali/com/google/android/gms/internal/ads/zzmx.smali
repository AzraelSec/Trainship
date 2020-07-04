.class final Lcom/google/android/gms/internal/ads/zzmx;
.super Lcom/google/android/gms/internal/ads/zzgc;


# instance fields
.field private final zzaaq:J

.field private final zzaar:J

.field private final zzazf:J

.field private final zzazh:J

.field private final zzbbd:Lcom/google/android/gms/internal/ads/zznj;

.field private final zzbby:I

.field private final zzbca:J


# direct methods
.method public constructor <init>(JJIJJJLcom/google/android/gms/internal/ads/zznj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgc;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzaaq:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzaar:J

    .line 4
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbby:I

    .line 5
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbca:J

    .line 6
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzazf:J

    .line 7
    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzazh:J

    .line 8
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzge;Z)Lcom/google/android/gms/internal/ads/zzge;
    .locals 12

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznj;->zzcl()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzc(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zznj;->zzba(I)Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zznn;->zzze:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 13
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbby:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznj;->zzcl()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzc(III)I

    move-result v0

    add-int/2addr p3, v0

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zznj;->zzbb(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    .line 18
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zznj;->zzba(I)Lcom/google/android/gms/internal/ads/zznn;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zznn;->zzbdj:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zznj;->zzba(I)Lcom/google/android/gms/internal/ads/zznn;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zznn;->zzbdj:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfe;->zzg(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbca:J

    sub-long v9, v0, v2

    const/4 v11, 0x0

    move-object v3, p2

    .line 19
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzge;->zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzge;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzgf;ZJ)Lcom/google/android/gms/internal/ads/zzgf;
    .locals 23

    move-object/from16 v0, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move/from16 v5, p1

    .line 21
    invoke-static {v5, v4, v3}, Lcom/google/android/gms/internal/ads/zzpo;->zzc(III)I

    .line 23
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzazh:J

    .line 24
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zznj;->zzbcs:Z

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    move-wide v15, v5

    goto/16 :goto_4

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v9, p4, v7

    if-lez v9, :cond_2

    add-long v5, v5, p4

    .line 28
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzazf:J

    cmp-long v7, v5, v1

    if-lez v7, :cond_2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 31
    :cond_2
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbca:J

    add-long/2addr v1, v5

    .line 32
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zznj;->zzbb(I)J

    move-result-wide v7

    move-wide v9, v7

    move-wide v7, v1

    const/4 v1, 0x0

    .line 33
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zznj;->zzcl()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    cmp-long v2, v7, v9

    if-ltz v2, :cond_3

    sub-long/2addr v7, v9

    add-int/lit8 v1, v1, 0x1

    .line 36
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zznj;->zzbb(I)J

    move-result-wide v9

    goto :goto_1

    .line 37
    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    .line 38
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zznj;->zzba(I)Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v1

    .line 40
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zznn;->zzbbe:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_2
    const/4 v12, -0x1

    if-ge v11, v2, :cond_5

    .line 42
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zznn;->zzbbe:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzni;

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzni;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, -0x1

    :goto_3
    if-ne v11, v12, :cond_6

    goto :goto_0

    .line 49
    :cond_6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zznn;->zzbbe:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzni;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzni;->zzbcn:Ljava/util/List;

    .line 50
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznp;->zzgj()Lcom/google/android/gms/internal/ads/zznd;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v1, v9, v10}, Lcom/google/android/gms/internal/ads/zznd;->zzai(J)I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    .line 53
    :cond_7
    invoke-interface {v1, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zznd;->zzf(JJ)I

    move-result v2

    .line 54
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zznd;->zzaw(I)J

    move-result-wide v1

    add-long/2addr v5, v1

    sub-long/2addr v5, v7

    goto/16 :goto_0

    :goto_4
    const/4 v8, 0x0

    .line 56
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzaaq:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzaar:J

    const/4 v13, 0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zznj;->zzbcs:Z

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzazf:J

    const/16 v19, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zznj;->zzcl()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzmx;->zzbca:J

    move-object/from16 v7, p2

    move-wide/from16 v17, v1

    move-wide/from16 v21, v3

    .line 58
    invoke-virtual/range {v7 .. v22}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/gms/internal/ads/zzgf;

    move-result-object v1

    return-object v1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 3

    .line 59
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 62
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbby:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbby:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzcl()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbby:I

    sub-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzck()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzcl()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbbd:Lcom/google/android/gms/internal/ads/zznj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznj;->zzcl()I

    move-result v0

    return v0
.end method
