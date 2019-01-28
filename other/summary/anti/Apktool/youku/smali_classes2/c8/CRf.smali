.class public Lc8/CRf;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "AccsUpdaterCenter.java"


# static fields
.field public static final MODULE:Ljava/lang/String; = "update_center_accs"

.field public static final MONITORPOINT:Ljava/lang/String; = "accs_message_receiver"

.field public static final SERVICE_ID:Ljava/lang/String; = "mtl"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private updateDataSource:Lc8/yRf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lc8/CRf;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/CRf;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/yRf;)V
    .locals 0
    .param p1, "updateDataSource"    # Lc8/yRf;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/CRf;->updateDataSource:Lc8/yRf;

    .line 26
    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 47
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "msg"    # [B
    .param p5, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 30
    if-nez p4, :cond_0

    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v0, "result":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccsUpdaterCenter.onData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    sget-object v1, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    const-string/jumbo v2, "update_center_accs"

    const-string/jumbo v3, "accs_message_receiver"

    invoke-virtual {v1, v2, v3, p3}, Lc8/aQf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lc8/CRf;->updateDataSource:Lc8/yRf;

    sget-object v2, Lc8/rRf;->ACCS_SOURCE:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lc8/yRf;->addUpdateInfo(Ljava/lang/String;Ljava/lang/String;Lc8/oRf;[Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "bytes"    # [B
    .param p5, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 62
    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 57
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 52
    return-void
.end method
