.class public final Lc8/pEd;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oEd;
    }
.end annotation


# static fields
.field static G:I

.field private static M:Z

.field private static O:I


# instance fields
.field A:Ljava/lang/StringBuilder;

.field B:Z

.field public C:Z

.field D:I

.field E:Lc8/AEd;

.field F:Z

.field H:Lc8/wEd;

.field I:Ljava/lang/String;

.field J:Landroid/content/IntentFilter;

.field private K:I

.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field a:Landroid/content/Context;

.field b:Landroid/net/ConnectivityManager;

.field c:Lc8/LEd;

.field d:Lc8/GEd;

.field e:Lc8/KEd;

.field f:Lc8/JEd;

.field g:Lc8/OEd;

.field h:Lc8/QEd;

.field i:Lc8/tEd;

.field j:Lc8/DEd;

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field l:Lc8/oEd;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field o:J

.field p:Ljava/lang/String;

.field q:Lc8/ZEd;

.field r:Z

.field s:Lc8/WEd;

.field t:Ljava/lang/StringBuilder;

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Landroid/net/wifi/WifiInfo;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Lc8/pEd;->M:Z

    sput v1, Lc8/pEd;->O:I

    sput v1, Lc8/pEd;->G:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lc8/pEd;->a:Landroid/content/Context;

    iput-object v2, p0, Lc8/pEd;->b:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lc8/pEd;->c:Lc8/LEd;

    iput-object v2, p0, Lc8/pEd;->d:Lc8/GEd;

    iput-object v2, p0, Lc8/pEd;->e:Lc8/KEd;

    iput-object v2, p0, Lc8/pEd;->f:Lc8/JEd;

    iput-object v2, p0, Lc8/pEd;->g:Lc8/OEd;

    iput-object v2, p0, Lc8/pEd;->h:Lc8/QEd;

    iput-object v2, p0, Lc8/pEd;->i:Lc8/tEd;

    iput-object v2, p0, Lc8/pEd;->j:Lc8/DEd;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lc8/pEd;->l:Lc8/oEd;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v2, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/pEd;->o:J

    iput v3, p0, Lc8/pEd;->K:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    iput-object v2, p0, Lc8/pEd;->q:Lc8/ZEd;

    iput-boolean v3, p0, Lc8/pEd;->r:Z

    iput-object v2, p0, Lc8/pEd;->L:Ljava/lang/String;

    iput-object v2, p0, Lc8/pEd;->s:Lc8/WEd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    iput-boolean v4, p0, Lc8/pEd;->u:Z

    iput-boolean v4, p0, Lc8/pEd;->v:Z

    iput-boolean v4, p0, Lc8/pEd;->w:Z

    iput-boolean v3, p0, Lc8/pEd;->x:Z

    iput-object v2, p0, Lc8/pEd;->y:Landroid/net/wifi/WifiInfo;

    iput-boolean v4, p0, Lc8/pEd;->z:Z

    iput-object v2, p0, Lc8/pEd;->N:Ljava/lang/String;

    iput-object v2, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Lc8/pEd;->B:Z

    iput-boolean v3, p0, Lc8/pEd;->C:Z

    const/16 v0, 0xc

    iput v0, p0, Lc8/pEd;->D:I

    iput-object v2, p0, Lc8/pEd;->E:Lc8/AEd;

    iput-boolean v3, p0, Lc8/pEd;->F:Z

    iput-object v2, p0, Lc8/pEd;->H:Lc8/wEd;

    iput-object v2, p0, Lc8/pEd;->I:Ljava/lang/String;

    iput-object v2, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x867

    invoke-static {v1, v2}, Lc8/qFd;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Lc8/fEd;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p2, Lc8/fEd;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p2, Lc8/fEd;->a:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "please check the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lc8/fEd;->d:Ljava/lang/String;

    const/16 v1, 0x7f9

    invoke-static {v0, v1}, Lc8/qFd;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v1, Lc8/YEd;

    invoke-direct {v1}, Lc8/YEd;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lc8/fEd;->a:[B

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "\"status\":\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lc8/YEd;->a(Ljava/lang/String;Landroid/content/Context;Lc8/fEd;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "checkResponseEntity"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "check response exception ex is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v1, "</body></html>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    iget-object v1, p0, Lc8/pEd;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lc8/LEd;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "make sure you are logged in to the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x803

    invoke-static {v0, v1}, Lc8/qFd;->a(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request may be intercepted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x804

    invoke-static {v0, v1}, Lc8/qFd;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v11, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v0, ""

    invoke-direct {v11, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    new-instance v12, Lc8/YEd;

    invoke-direct {v12}, Lc8/YEd;-><init>()V

    :try_start_0
    iget-object v0, p0, Lc8/pEd;->q:Lc8/ZEd;

    if-nez v0, :cond_0

    new-instance v0, Lc8/ZEd;

    invoke-direct {v0}, Lc8/ZEd;-><init>()V

    iput-object v0, p0, Lc8/pEd;->q:Lc8/ZEd;

    :cond_0
    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    iget-object v0, p0, Lc8/pEd;->q:Lc8/ZEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2

    iget-object v3, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    iget-object v4, p0, Lc8/pEd;->d:Lc8/GEd;

    iget-object v5, p0, Lc8/pEd;->c:Lc8/LEd;

    iget-object v6, p0, Lc8/pEd;->b:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lc8/pEd;->j:Lc8/DEd;

    iget-object v8, p0, Lc8/pEd;->p:Ljava/lang/String;

    iget-object v9, p0, Lc8/pEd;->f:Lc8/JEd;

    invoke-virtual {v9}, Lc8/JEd;->f()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lc8/pEd;->I:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lc8/ZEd;->a(Landroid/content/Context;ZZLc8/GEd;Lc8/LEd;Landroid/net/ConnectivityManager;Lc8/DEd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v1, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v0, v1}, Lc8/KEd;->a(Lc8/GEd;)V

    iget-object v0, p0, Lc8/pEd;->q:Lc8/ZEd;

    invoke-virtual {v0}, Lc8/ZEd;->a()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/pEd;->o:J

    :try_start_1
    iget-object v1, p0, Lc8/pEd;->s:Lc8/WEd;

    iget-object v2, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {}, Lc8/cFd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p2}, Lc8/WEd;->a(Landroid/content/Context;[BLjava/lang/String;Z)Lc8/XEd;

    move-result-object v0

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v1}, Lc8/UEd;->a(Landroid/content/Context;)Lc8/UEd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/UEd;->a(Lc8/XEd;)V

    iget-object v1, p0, Lc8/pEd;->s:Lc8/WEd;

    invoke-virtual {v1, v0}, Lc8/WEd;->a(Lc8/XEd;)Lc8/fEd;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const-string/jumbo v0, ""

    if-eqz v2, :cond_3

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v0}, Lc8/UEd;->a(Landroid/content/Context;)Lc8/UEd;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UEd;->a()V

    iget-object v0, p0, Lc8/pEd;->s:Lc8/WEd;

    invoke-virtual {v0}, Lc8/WEd;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V

    iget-object v0, v2, Lc8/fEd;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " #csid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lc8/fEd;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, v2, Lc8/fEd;->d:Ljava/lang/String;

    iget-object v1, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->g(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_e

    invoke-direct {p0, v11, v2}, Lc8/pEd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Lc8/fEd;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v11, v1

    :goto_0
    return-object v11

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get parames error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7ef

    invoke-static {v0, v1}, Lc8/qFd;->a(Ljava/lang/String;I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v11

    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->g(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v1}, Lc8/UEd;->a(Landroid/content/Context;)Lc8/UEd;

    move-result-object v1

    invoke-virtual {v1}, Lc8/UEd;->b()V

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "getApsLoc req"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "/mobile/binary"

    invoke-static {v1, v0}, Lc8/qFd;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request error, please check the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v11

    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, v2, Lc8/fEd;->a:[B

    invoke-static {v1}, Lc8/MEd;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0x805

    invoke-static {v0, v1}, Lc8/qFd;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v12, v11, v1}, Lc8/YEd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[B)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    invoke-static {v1}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/pEd;->L:Ljava/lang/String;

    iget-object v2, p0, Lc8/pEd;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x80e

    invoke-static {v0, v2}, Lc8/qFd;->a(Ljava/lang/String;I)V

    :goto_1
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v2, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "location faile retype:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lc8/pEd;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    move-object v11, v1

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x80d

    invoke-static {v0, v2}, Lc8/qFd;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lc8/pEd;->L:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lc8/pEd;->j:Lc8/DEd;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lc8/pEd;->j:Lc8/DEd;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v3

    :try_start_2
    const-string/jumbo v4, "-1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_c

    invoke-virtual {v0}, Lc8/DEd;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    :goto_3
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "-5"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "2"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "14"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "24"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "-1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_b
    :goto_4
    iget-boolean v0, p0, Lc8/pEd;->v:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setOffset(Z)V

    iget-boolean v0, p0, Lc8/pEd;->u:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(Z)V

    move-object v0, v1

    :goto_5
    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/pEd;->I:Ljava/lang/String;

    move-object v11, v0

    goto/16 :goto_0

    :cond_c
    :try_start_3
    invoke-virtual {v0}, Lc8/DEd;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v2, "BeaconManager"

    const-string/jumbo v3, "checkLocationType"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    goto :goto_4

    :cond_e
    move-object v0, v11

    goto :goto_5
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v0}, Lc8/GEd;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget v0, Lc8/pEd;->O:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lc8/bFd;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput v0, Lc8/pEd;->O:I

    invoke-static {p0}, Lc8/bFd;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initAuth"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 3

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v1, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/KEd;->a(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    invoke-virtual {v0}, Lc8/KEd;->c()V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/pEd;->l:Lc8/oEd;

    if-nez v0, :cond_0

    new-instance v0, Lc8/oEd;

    invoke-direct {v0, p0}, Lc8/oEd;-><init>(Lc8/pEd;)V

    iput-object v0, p0, Lc8/pEd;->l:Lc8/oEd;

    :cond_0
    iget-object v0, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    iget-object v0, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v1, p0, Lc8/pEd;->l:Lc8/oEd;

    iget-object v2, p0, Lc8/pEd;->J:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 10

    const/16 v9, 0xc

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v5, "network"

    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v0}, Lc8/GEd;->e()I

    move-result v0

    iget-object v1, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v1}, Lc8/GEd;->c()Lc8/FEd;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v6, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v0}, Lc8/GEd;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v1}, Lc8/LEd;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    iput v9, p0, Lc8/pEd;->D:I

    iget-object v2, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-object v4

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v0}, Lc8/uFd;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locationpermission has not been granted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput v9, p0, Lc8/pEd;->D:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "no cgi & no wifis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    iput v0, p0, Lc8/pEd;->D:I

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v6}, Lc8/LEd;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Lc8/pEd;->y:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lc8/pEd;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v6}, Lc8/LEd;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lc8/pEd;->z:Z

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xb

    iput v0, p0, Lc8/pEd;->D:I

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "get cgi failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move-object v0, v4

    :cond_7
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/uFd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object v4, v0

    goto :goto_1

    :pswitch_0
    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Lc8/FEd;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lc8/FEd;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lc8/FEd;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lc8/FEd;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lc8/pEd;->z:Z

    if-eqz v0, :cond_b

    :cond_a
    const-string/jumbo v0, "cgiwifi"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v0, "cgi"

    goto :goto_3

    :pswitch_1
    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Lc8/FEd;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lc8/FEd;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lc8/FEd;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lc8/FEd;->h:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lc8/FEd;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lc8/pEd;->z:Z

    if-eqz v0, :cond_d

    :cond_c
    const-string/jumbo v0, "cgiwifi"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v0, "cgi"

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lc8/pEd;->z:Z

    if-eqz v0, :cond_13

    :cond_e
    move v1, v3

    :goto_5
    iget-boolean v0, p0, Lc8/pEd;->z:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iput v7, p0, Lc8/pEd;->D:I

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "no around wifi(s) & has access wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v8, v0}, Lc8/qFd;->a(Ljava/lang/String;I)V

    move v1, v2

    :cond_f
    :goto_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "#%s#"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_f

    iput v7, p0, Lc8/pEd;->D:I

    iget-boolean v0, p0, Lc8/pEd;->z:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "no access wifi & around wifi 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e6

    invoke-static {v8, v0}, Lc8/qFd;->a(Ljava/lang/String;I)V

    move v1, v2

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v4}, Lc8/LEd;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "same access wifi & around wifi 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v8, v0}, Lc8/qFd;->a(Ljava/lang/String;I)V

    move v1, v2

    goto :goto_6

    :cond_12
    const-string/jumbo v1, "network"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, ""

    iput v7, p0, Lc8/pEd;->D:I

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_13
    move v1, v2

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(DD)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "output=json&radius=1000&extensions=all&location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/pEd;->s:Lc8/WEd;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lc8/pEd;->a:Landroid/content/Context;

    const-string/jumbo v3, "http://restapi.amap.com/v3/geocode/regeo"

    invoke-virtual {v1, v0, v2, v3}, Lc8/WEd;->a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc8/YEd;

    invoke-direct {v1}, Lc8/YEd;-><init>()V

    const-string/jumbo v1, "\"status\":\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lc8/YEd;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lc8/pEd;->H:Lc8/wEd;

    iget-boolean v1, p0, Lc8/pEd;->w:Z

    invoke-virtual {v0, v1}, Lc8/wEd;->a(Z)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lc8/pEd;->H:Lc8/wEd;

    invoke-virtual {v0, p1}, Lc8/wEd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    aget-object v0, p2, v2

    const-string/jumbo v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/pEd;->H:Lc8/wEd;

    invoke-virtual {v0, p1}, Lc8/wEd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    goto :goto_0

    :cond_3
    aget-object v0, p2, v2

    const-string/jumbo v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public final a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 7

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7db

    invoke-static {v0, v1}, Lc8/qFd;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string/jumbo v1, "networkLocation has been mocked!"

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc8/pEd;->a()V

    iget-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc8/pEd;->D:I

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lc8/pEd;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    invoke-static {v6}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/OEd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v1}, Lc8/GEd;->c()Lc8/FEd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/OEd;->a(Lc8/FEd;)V

    invoke-direct {p0, v6}, Lc8/pEd;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/KEd;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v1, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v2, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v4, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Lc8/pEd;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lc8/KEd;->a(Lc8/OEd;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v0}, Lc8/WEd;->a(Landroid/content/Context;)Lc8/WEd;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->s:Lc8/WEd;

    iget-object v0, p0, Lc8/pEd;->s:Lc8/WEd;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lc8/pEd;->s:Lc8/WEd;

    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v0

    sget-object v4, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lc8/WEd;->a(JZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lc8/pEd;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-static {v0, v1}, Lc8/uFd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lc8/pEd;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Lc8/pEd;->q:Lc8/ZEd;

    if-nez v0, :cond_2

    new-instance v0, Lc8/ZEd;

    invoke-direct {v0}, Lc8/ZEd;-><init>()V

    iput-object v0, p0, Lc8/pEd;->q:Lc8/ZEd;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lc8/wEd;

    invoke-direct {v0}, Lc8/wEd;-><init>()V

    iput-object v0, p0, Lc8/pEd;->H:Lc8/wEd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v0}, Lc8/bFd;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v0}, Lc8/uFd;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lc8/uFd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lc8/LEd;

    iget-object v2, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lc8/LEd;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lc8/pEd;->c:Lc8/LEd;

    :cond_2
    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    if-nez v0, :cond_3

    new-instance v0, Lc8/GEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/GEd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    :cond_3
    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    if-nez v0, :cond_4

    new-instance v0, Lc8/KEd;

    invoke-direct {v0}, Lc8/KEd;-><init>()V

    iput-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    :cond_4
    iget-object v0, p0, Lc8/pEd;->f:Lc8/JEd;

    if-nez v0, :cond_5

    new-instance v0, Lc8/JEd;

    invoke-direct {v0}, Lc8/JEd;-><init>()V

    iput-object v0, p0, Lc8/pEd;->f:Lc8/JEd;

    :cond_5
    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    if-nez v0, :cond_6

    new-instance v0, Lc8/OEd;

    invoke-direct {v0}, Lc8/OEd;-><init>()V

    iput-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    :cond_6
    iget-object v0, p0, Lc8/pEd;->h:Lc8/QEd;

    if-nez v0, :cond_0

    new-instance v0, Lc8/QEd;

    invoke-direct {v0, p1}, Lc8/QEd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/pEd;->h:Lc8/QEd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initBase"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 7

    const/4 v1, 0x1

    iput-object p1, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    iget-object v2, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    iget-object v2, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v2

    iget-object v3, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lc8/LEd;->a(ZZ)V

    :cond_1
    iget-object v0, p0, Lc8/pEd;->s:Lc8/WEd;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lc8/pEd;->s:Lc8/WEd;

    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v0

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v2, v4, v5, v0}, Lc8/WEd;->a(JZ)V

    :cond_2
    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v2, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lc8/OEd;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :try_start_1
    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    :try_start_2
    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    :try_start_3
    iget-object v1, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v1

    iput-boolean v1, p0, Lc8/pEd;->x:Z

    iget-object v1, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v1

    iput-boolean v1, p0, Lc8/pEd;->F:Z

    iget-boolean v1, p0, Lc8/pEd;->v:Z

    if-ne v3, v1, :cond_4

    iget-boolean v1, p0, Lc8/pEd;->u:Z

    if-ne v2, v1, :cond_4

    iget-boolean v1, p0, Lc8/pEd;->w:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    if-eq v0, v1, :cond_8

    :cond_4
    :try_start_4
    iget-object v1, p0, Lc8/pEd;->g:Lc8/OEd;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc8/pEd;->g:Lc8/OEd;

    invoke-virtual {v1}, Lc8/OEd;->a()V

    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lc8/pEd;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lc8/pEd;->o:J

    iget-object v1, p0, Lc8/pEd;->H:Lc8/wEd;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc8/pEd;->H:Lc8/wEd;

    invoke-virtual {v1}, Lc8/wEd;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    move v1, v2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lc8/pEd;->v:Z

    iput-boolean v1, p0, Lc8/pEd;->u:Z

    iput-boolean v0, p0, Lc8/pEd;->w:Z

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v4, "APS"

    const-string/jumbo v5, "cleanCache"

    invoke-static {v1, v4, v5}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_8
    move v1, v2

    move v2, v3

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    move v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_1

    :catch_3
    move-exception v0

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    :catch_4
    move-exception v1

    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method public final a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 6

    invoke-static {p1}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v2, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc8/pEd;->a:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lc8/OEd;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lc8/pEd;->j:Lc8/DEd;

    if-nez v0, :cond_0

    new-instance v0, Lc8/DEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/DEd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/pEd;->j:Lc8/DEd;

    :cond_0
    iget-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    if-nez v0, :cond_1

    new-instance v0, Lc8/AEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/AEd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    :cond_1
    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    if-nez v0, :cond_2

    new-instance v0, Lc8/tEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/tEd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    :cond_2
    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/KEd;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lc8/pEd;->l()V

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0, v2}, Lc8/LEd;->b(Z)V

    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v0, v2}, Lc8/GEd;->a(Z)V

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/OEd;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lc8/pEd;->h:Lc8/QEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/QEd;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    invoke-virtual {v0}, Lc8/tEd;->b()V

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    :try_start_0
    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/pEd;->r:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iput-boolean v3, p0, Lc8/pEd;->C:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lc8/pEd;->k()V

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lc8/pEd;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/pEd;->K:I

    iget v0, p0, Lc8/pEd;->K:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lc8/pEd;->f:Lc8/JEd;

    invoke-virtual {v0}, Lc8/JEd;->e()V

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    iget-boolean v2, p0, Lc8/pEd;->r:Z

    invoke-virtual {v0, v2}, Lc8/LEd;->a(Z)V

    :cond_1
    iget-object v0, p0, Lc8/pEd;->f:Lc8/JEd;

    invoke-virtual {v0}, Lc8/JEd;->a()V

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    invoke-virtual {v0}, Lc8/KEd;->a()V

    iget-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    :cond_2
    iget-wide v2, p0, Lc8/pEd;->o:J

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    const-wide/16 v6, 0x320

    cmp-long v0, v2, v6

    if-gez v0, :cond_15

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lc8/uFd;->a()J

    move-result-wide v2

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    :goto_2
    const-wide/16 v6, 0x2710

    cmp-long v0, v2, v6

    if-gtz v0, :cond_15

    move v0, v8

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lc8/pEd;->w:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc8/bFd;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_3
    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v0}, Lc8/tFd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    move-object v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lc8/pEd;->F:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    invoke-virtual {v0}, Lc8/AEd;->a()V

    :cond_6
    :goto_4
    :try_start_0
    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lc8/GEd;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    :try_start_1
    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lc8/LEd;->b(Z)V

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    invoke-direct {p0}, Lc8/pEd;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    invoke-virtual {v0}, Lc8/tEd;->e()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    invoke-virtual {v0}, Lc8/AEd;->b()V

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getLocation getCgiListParam"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "getLocation getScanResultsParam"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    iget v0, p0, Lc8/pEd;->D:I

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v2, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v3, p0, Lc8/pEd;->N:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lc8/KEd;->a(Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-static {v0}, Lc8/TFd;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/pEd;->p:Ljava/lang/String;

    sget-boolean v3, Lc8/pEd;->M:Z

    if-nez v3, :cond_c

    if-eqz v0, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "pref"

    invoke-virtual {v0, v3, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    :try_start_2
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc8/UFd;->a([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "smac"

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    sput-boolean v8, Lc8/pEd;->M:Z

    :cond_c
    iget-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lc8/pEd;->p:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lc8/pEd;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    const-string/jumbo v1, "networkLocation has been mocked!"

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "SPUtil"

    const-string/jumbo v6, "setSmac"

    invoke-static {v0, v2, v6}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-wide v0, p0, Lc8/pEd;->o:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_11

    move v2, v8

    :goto_8
    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->d:Lc8/GEd;

    iget-object v3, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Lc8/pEd;->c:Lc8/LEd;

    iget-object v5, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v7, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v7}, Lc8/OEd;->a(Lc8/GEd;ZLcom/autonavi/aps/amapapi/model/AMapLocationServer;Lc8/LEd;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, v0}, Lc8/pEd;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    :cond_f
    :goto_9
    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v2, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Lc8/pEd;->a:Landroid/content/Context;

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lc8/OEd;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    iget-object v0, p0, Lc8/pEd;->h:Lc8/QEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v3, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v1, v2, v3}, Lc8/QEd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v1, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v2, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v3, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Lc8/pEd;->m()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual/range {v0 .. v6}, Lc8/KEd;->a(Lc8/OEd;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_10
    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lc8/pEd;->F:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lc8/pEd;->E:Lc8/AEd;

    invoke-virtual {v1}, Lc8/AEd;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lc8/pEd;->E:Lc8/AEd;

    invoke-virtual {v1}, Lc8/AEd;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lc8/pEd;->E:Lc8/AEd;

    invoke-virtual {v1}, Lc8/AEd;->e()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V

    :goto_a
    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/pEd;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    move v2, v8

    goto/16 :goto_8

    :cond_12
    move v2, v9

    goto/16 :goto_8

    :cond_13
    invoke-direct {p0, v9, v8}, Lc8/pEd;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/OEd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v1}, Lc8/GEd;->c()Lc8/FEd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/OEd;->a(Lc8/FEd;)V

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    iget-object v1, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1, v8}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/KEd;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    invoke-virtual {v0}, Lc8/KEd;->c()V

    goto/16 :goto_9

    :cond_14
    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v10}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v10}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V

    goto :goto_a

    :cond_15
    move v0, v9

    goto/16 :goto_3

    :cond_16
    move-wide v2, v4

    goto/16 :goto_2
.end method

.method public final d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lc8/pEd;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p0, v0}, Lc8/pEd;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    invoke-virtual {p0}, Lc8/pEd;->h()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/pEd;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/pEd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lc8/pEd;->I:Ljava/lang/String;

    iput-boolean v0, p0, Lc8/pEd;->B:Z

    iput-boolean v0, p0, Lc8/pEd;->C:Z

    iget-object v0, p0, Lc8/pEd;->f:Lc8/JEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pEd;->f:Lc8/JEd;

    invoke-virtual {v0}, Lc8/JEd;->b()V

    :cond_0
    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    invoke-virtual {v0}, Lc8/tEd;->a()V

    :cond_1
    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/OEd;->b(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lc8/pEd;->H:Lc8/wEd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/pEd;->H:Lc8/wEd;

    invoke-virtual {v0}, Lc8/wEd;->a()V

    :cond_3
    invoke-static {}, Lc8/uFd;->g()V

    :try_start_0
    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->l:Lc8/oEd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v1, p0, Lc8/pEd;->l:Lc8/oEd;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-object v3, p0, Lc8/pEd;->l:Lc8/oEd;

    :goto_0
    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    invoke-virtual {v0}, Lc8/GEd;->g()V

    :cond_5
    iget-object v0, p0, Lc8/pEd;->h:Lc8/QEd;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc8/pEd;->h:Lc8/QEd;

    invoke-virtual {v0}, Lc8/QEd;->a()V

    :cond_6
    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->j()V

    :cond_7
    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    iget-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lc8/pEd;->E:Lc8/AEd;

    invoke-virtual {v0}, Lc8/AEd;->f()V

    :cond_9
    iput-object v3, p0, Lc8/pEd;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v3, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lc8/pEd;->e:Lc8/KEd;

    invoke-virtual {v0}, Lc8/KEd;->b()V

    :cond_a
    iput-object v3, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc8/pEd;->j:Lc8/DEd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc8/pEd;->j:Lc8/DEd;

    invoke-virtual {v0}, Lc8/DEd;->d()V

    :cond_b
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lc8/pEd;->l:Lc8/oEd;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lc8/pEd;->l:Lc8/oEd;

    throw v0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    invoke-virtual {v0}, Lc8/tEd;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "bindAMapService"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pEd;->i:Lc8/tEd;

    invoke-virtual {v0}, Lc8/tEd;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "bindOtherService"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v0, p0, Lc8/pEd;->B:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Lc8/pEd;->x:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lc8/pEd;->l()V

    :cond_3
    iget-object v0, p0, Lc8/pEd;->d:Lc8/GEd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/GEd;->a(Z)V

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    iget-boolean v1, p0, Lc8/pEd;->x:Z

    invoke-virtual {v0, v1}, Lc8/LEd;->b(Z)V

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->k:Ljava/util/ArrayList;

    invoke-direct {p0}, Lc8/pEd;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lc8/pEd;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lc8/pEd;->B:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final i()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    invoke-direct {p0}, Lc8/pEd;->k()V

    iget-object v0, p0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string/jumbo v1, "networkLocation has been mocked!"

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/pEd;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc8/pEd;->D:I

    iget-object v1, p0, Lc8/pEd;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/pEd;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc8/pEd;->g:Lc8/OEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/pEd;->N:Ljava/lang/String;

    iget-object v3, p0, Lc8/pEd;->A:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/OEd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lc8/uFd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lc8/pEd;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Lc8/pEd;->f:Lc8/JEd;

    iget-object v1, p0, Lc8/pEd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/pEd;->s:Lc8/WEd;

    iget-object v3, p0, Lc8/pEd;->c:Lc8/LEd;

    iget-object v4, p0, Lc8/pEd;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v5, p0, Lc8/pEd;->b:Landroid/net/ConnectivityManager;

    invoke-virtual/range {v0 .. v5}, Lc8/JEd;->a(Landroid/content/Context;Lc8/WEd;Lc8/LEd;Lcom/amap/api/location/AMapLocationClientOption;Landroid/net/ConnectivityManager;)V

    return-void
.end method
