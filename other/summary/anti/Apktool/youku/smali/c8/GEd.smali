.class public final Lc8/GEd;
.super Ljava/lang/Object;
.source "CgiManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/FEd;",
            ">;"
        }
    .end annotation
.end field

.field static d:J

.field static e:Landroid/telephony/CellLocation;

.field private static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/FEd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field c:Landroid/telephony/TelephonyManager;

.field f:Ljava/lang/String;

.field g:Z

.field h:Ljava/lang/StringBuilder;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private l:I

.field private m:Lc8/EEd;

.field private n:Ljava/lang/Object;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/GEd;->k:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/GEd;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lc8/GEd;->a:I

    iput-object v2, p0, Lc8/GEd;->j:Ljava/lang/String;

    const/16 v0, -0x71

    iput v0, p0, Lc8/GEd;->l:I

    iput-object v2, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lc8/GEd;->m:Lc8/EEd;

    iput v3, p0, Lc8/GEd;->o:I

    iput-object v2, p0, Lc8/GEd;->f:Ljava/lang/String;

    iput-boolean v3, p0, Lc8/GEd;->g:Z

    iput-object v2, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lc8/GEd;->i:Landroid/content/Context;

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/GEd;->i:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Lc8/uFd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/GEd;->b(Landroid/telephony/CellLocation;)I

    move-result v0

    iput v0, p0, Lc8/GEd;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lc8/GEd;->p()I

    move-result v0

    iput v0, p0, Lc8/GEd;->o:I

    iget v0, p0, Lc8/GEd;->o:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc8/GEd;->i:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    invoke-static {v0, v1}, Lc8/uFd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/GEd;->n:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    new-instance v0, Lc8/EEd;

    invoke-direct {v0}, Lc8/EEd;-><init>()V

    iput-object v0, p0, Lc8/GEd;->m:Lc8/EEd;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GEd;->f:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v2, p0, Lc8/GEd;->f:Ljava/lang/String;

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lc8/GEd;->a:I

    goto :goto_0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lc8/GEd;->i:Landroid/content/Context;

    const-string/jumbo v1, "phone_msim"

    invoke-static {v0, v1}, Lc8/uFd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/GEd;->n:Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lc8/GEd;->i:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    invoke-static {v0, v1}, Lc8/uFd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/GEd;->n:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/CellLocation;

    :goto_1
    invoke-direct {p0, v0}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v11, 0x0

    const/4 v10, 0x0

    sget-object v13, Lc8/GEd;->k:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/GEd;->m:Lc8/EEd;

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_d

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v15, :cond_d

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    instance-of v4, v2, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_7

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v5

    if-ltz v5, :cond_5

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v4

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_6

    :cond_4
    :goto_3
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lc8/GEd;->a(Landroid/telephony/CellInfoCdma;Z)Lc8/FEd;

    move-result-object v9

    const-wide/32 v2, 0xffff

    invoke-virtual {v14, v9}, Lc8/EEd;->a(Lc8/FEd;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, v9, Lc8/FEd;->l:S

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_7
    instance-of v4, v2, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_9

    move-object v0, v2

    check-cast v0, Landroid/telephony/CellInfoGsm;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    invoke-static {v4}, Lc8/GEd;->b(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-static {v2}, Lc8/GEd;->c(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    const/4 v2, 0x1

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v5

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v7

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lc8/GEd;->a(IZIIIII)Lc8/FEd;

    move-result-object v9

    const-wide/32 v2, 0xffff

    invoke-virtual {v14, v9}, Lc8/EEd;->a(Lc8/FEd;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, v9, Lc8/FEd;->l:S

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    instance-of v4, v2, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_b

    move-object v0, v2

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    invoke-static {v4}, Lc8/GEd;->b(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-static {v2}, Lc8/GEd;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_4

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    const/4 v2, 0x4

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v5

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v6

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lc8/GEd;->a(IZIIIII)Lc8/FEd;

    move-result-object v9

    const-wide/32 v2, 0xffff

    invoke-virtual {v14, v9}, Lc8/EEd;->a(Lc8/FEd;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, v9, Lc8/FEd;->l:S

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    instance-of v4, v2, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_10

    move-object v0, v2

    check-cast v0, Landroid/telephony/CellInfoLte;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    invoke-static {v4}, Lc8/GEd;->b(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-static {v2}, Lc8/GEd;->c(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_4

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    const/4 v2, 0x3

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v5

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lc8/GEd;->a(IZIIIII)Lc8/FEd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-wide/32 v4, 0xffff

    :try_start_1
    invoke-virtual {v14, v2}, Lc8/EEd;->a(Lc8/FEd;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    iput-short v3, v2, Lc8/FEd;->l:S

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    move-object v9, v2

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lc8/GEd;->a:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lc8/GEd;->a:I

    invoke-virtual {v14, v13}, Lc8/EEd;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lc8/FEd;

    if-eqz v7, :cond_e

    iget v2, v7, Lc8/FEd;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iget v3, v7, Lc8/FEd;->i:I

    iget v4, v7, Lc8/FEd;->e:I

    iget v5, v7, Lc8/FEd;->f:I

    iget v6, v7, Lc8/FEd;->g:I

    iget v7, v7, Lc8/FEd;->h:I

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    move-object v3, v2

    move-object v2, v11

    :goto_8
    if-eqz v3, :cond_1

    move-object v2, v3

    goto/16 :goto_0

    :cond_e
    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iget v3, v9, Lc8/FEd;->c:I

    iget v4, v9, Lc8/FEd;->d:I

    invoke-virtual {v2, v3, v4}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    move-object v3, v10

    goto :goto_8

    :catch_1
    move-exception v3

    move-object v9, v2

    goto/16 :goto_3

    :cond_f
    move-object v3, v10

    move-object v2, v11

    goto :goto_8

    :cond_10
    move-object v2, v9

    goto :goto_7
.end method

.method private static a(IZIIIII)Lc8/FEd;
    .locals 1

    new-instance v0, Lc8/FEd;

    invoke-direct {v0, p0, p1}, Lc8/FEd;-><init>(IZ)V

    iput p2, v0, Lc8/FEd;->a:I

    iput p3, v0, Lc8/FEd;->b:I

    iput p4, v0, Lc8/FEd;->c:I

    iput p5, v0, Lc8/FEd;->d:I

    iput p6, v0, Lc8/FEd;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lc8/FEd;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lc8/uFd;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v6

    move v1, p2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lc8/GEd;->a(IZIIIII)Lc8/FEd;

    move-result-object v0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v0, Lc8/FEd;->g:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v0, Lc8/FEd;->h:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v0, Lc8/FEd;->i:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v0, Lc8/FEd;->e:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Lc8/FEd;->f:I

    return-object v0

    :catch_0
    move-exception v0

    move v2, v4

    :goto_1
    move v3, v4

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lc8/FEd;
    .locals 3

    :try_start_0
    new-instance v0, Lc8/FEd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/FEd;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->a:I

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->b:I

    const-string/jumbo v1, "getLac"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Lc8/FEd;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Lc8/uFd;->a(I)I

    move-result v1

    iput v1, v0, Lc8/FEd;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "getGsm"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/FEd;",
            ">;"
        }
    .end annotation

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lc8/GEd;->a:I

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v1, Lc8/FEd;

    invoke-direct {v1, v3, v3}, Lc8/FEd;-><init>(IZ)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lc8/FEd;->a:I

    aget-object v2, p2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lc8/FEd;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lc8/FEd;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lc8/FEd;->d:I

    iget v2, p0, Lc8/GEd;->l:I

    iput v2, v1, Lc8/FEd;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lc8/GEd;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, p2}, Lc8/GEd;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lc8/FEd;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 3

    const v2, 0xffff

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-gt p0, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const v1, 0xfffffff

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private a(Landroid/telephony/CellLocation;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lc8/GEd;->b(Landroid/telephony/CellLocation;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iput v1, p0, Lc8/GEd;->a:I

    :cond_2
    move v1, v0

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lc8/GEd;->a(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "CgiManager"

    const-string/jumbo v4, "cgiUseful Cgi.iGsmT"

    invoke-static {v2, v3, v4}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string/jumbo v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v3, "CgiManager"

    const-string/jumbo v4, "cgiUseful Cgi.iCdmaT"

    invoke-static {v2, v3, v4}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/telephony/CellLocation;)I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc8/GEd;->g:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Lc8/GEd;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getCellLocT"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/FEd;",
            ">;"
        }
    .end annotation

    sget-object v0, Lc8/GEd;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const v0, 0xfffffff

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lc8/GEd;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v0, Lc8/GEd;->e:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GEd;->f:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lc8/GEd;->f:Ljava/lang/String;

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/GEd;->f:Ljava/lang/String;

    sput-object v0, Lc8/GEd;->e:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lc8/GEd;->a:I

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private m()Landroid/telephony/CellLocation;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lc8/GEd;->k()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lc8/uFd;->c()I

    move-result v1

    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/GEd;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v0, "getCellLocationExt"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lc8/GEd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "getCellLocationGemini"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lc8/GEd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/GEd;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method private n()Landroid/telephony/CellLocation;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lc8/GEd;->n:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lc8/GEd;->o()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "getCellLocation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3}, Lc8/GEd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lc8/GEd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lc8/GEd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "getAllCellInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lc8/GEd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getSim2Cgi"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private o()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget v0, p0, Lc8/GEd;->o:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CgiManager"

    const-string/jumbo v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private p()I
    .locals 1

    :try_start_0
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Lc8/GEd;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lc8/GEd;->o:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v0, p0, Lc8/GEd;->o:I

    if-nez v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Lc8/GEd;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lc8/GEd;->o:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    iget v0, p0, Lc8/GEd;->o:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    const v8, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lc8/GEd;->i:Landroid/content/Context;

    invoke-static {v0}, Lc8/uFd;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/GEd;->g:Z

    iget-boolean v0, p0, Lc8/GEd;->g:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lc8/GEd;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lc8/GEd;->m()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lc8/GEd;->n()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_7

    sput-object v0, Lc8/GEd;->e:Landroid/telephony/CellLocation;

    :cond_1
    :goto_1
    sget-object v0, Lc8/GEd;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lc8/GEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GEd;->j:Ljava/lang/String;

    iget-object v0, p0, Lc8/GEd;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lc8/GEd;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lc8/GEd;->a:I

    :cond_3
    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    sput-wide v0, Lc8/GEd;->d:J

    :cond_4
    iget-boolean v0, p0, Lc8/GEd;->g:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lc8/GEd;->l()V

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v4

    sget-wide v6, Lc8/GEd;->d:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gez v0, :cond_f

    move v0, v2

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lc8/GEd;->e:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GEd;->f:Ljava/lang/String;

    goto :goto_3

    :cond_8
    :try_start_1
    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lc8/uFd;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lc8/GEd;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lc8/GEd;->b(Landroid/telephony/CellLocation;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lc8/GEd;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0, v3, p1}, Lc8/GEd;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "refresh"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    :try_start_2
    sget-object v4, Lc8/GEd;->e:Landroid/telephony/CellLocation;

    if-eqz v4, :cond_2

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lc8/uFd;->c()I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    const/4 v5, 0x5

    if-lt v0, v5, :cond_2

    :try_start_3
    iget-object v0, p0, Lc8/GEd;->n:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "mGsmCellLoc"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0, v0, v3, p1}, Lc8/GEd;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    :goto_4
    if-nez v0, :cond_2

    :cond_a
    :try_start_5
    invoke-direct {p0, v4}, Lc8/GEd;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lc8/GEd;->a:I

    new-instance v0, Lc8/FEd;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/FEd;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->a:I

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->b:I

    const-string/jumbo v1, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->g:I

    const-string/jumbo v1, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->h:I

    const-string/jumbo v1, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->i:I

    iget v1, p0, Lc8/GEd;->l:I

    iput v1, v0, Lc8/FEd;->j:I

    const-string/jumbo v1, "getBaseStationLatitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->e:I

    const-string/jumbo v1, "getBaseStationLongitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lc8/FEd;->f:I

    iget v1, v0, Lc8/FEd;->e:I

    if-ltz v1, :cond_b

    iget v1, v0, Lc8/FEd;->f:I

    if-ltz v1, :cond_b

    iget v1, v0, Lc8/FEd;->e:I

    if-eq v1, v8, :cond_b

    iget v1, v0, Lc8/FEd;->f:I

    if-eq v1, v8, :cond_b

    iget v1, v0, Lc8/FEd;->e:I

    iget v2, v0, Lc8/FEd;->f:I

    if-ne v1, v2, :cond_c

    iget v1, v0, Lc8/FEd;->e:I

    if-lez v1, :cond_c

    :cond_b
    const/4 v1, 0x0

    iput v1, v0, Lc8/FEd;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lc8/FEd;->f:I

    :cond_c
    sget-object v1, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "CgiManager"

    const-string/jumbo v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :cond_d
    move v0, v2

    goto/16 :goto_4

    :cond_e
    iget v0, p0, Lc8/GEd;->a:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_2
    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lc8/GEd;->a:I

    goto/16 :goto_3

    :pswitch_3
    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lc8/GEd;->a:I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c()Lc8/FEd;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc8/GEd;->g:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FEd;

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lc8/GEd;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lc8/GEd;->a:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final f()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/GEd;->m:Lc8/EEd;

    invoke-virtual {v0}, Lc8/EEd;->a()V

    const/16 v0, -0x71

    iput v0, p0, Lc8/GEd;->l:I

    iput-object v1, p0, Lc8/GEd;->c:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lc8/GEd;->n:Ljava/lang/Object;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/GEd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/GEd;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lc8/GEd;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/GEd;->l()V

    :cond_0
    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    :goto_0
    iget v0, p0, Lc8/GEd;->a:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    :cond_1
    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FEd;

    iget v0, v0, Lc8/FEd;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FEd;

    iget v0, v0, Lc8/FEd;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/GEd;->h:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lc8/GEd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FEd;

    iget v0, v0, Lc8/FEd;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
