.class public Lc8/ILj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lcom/taobao/accs/IAppReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KLj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccsYoukuCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/uLj;)V
    .locals 0
    .param p1, "x0"    # Lc8/uLj;

    .prologue
    .line 924
    invoke-direct {p0}, Lc8/ILj;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllServices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    invoke-static {}, Lc8/KLj;->access$1400()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 959
    invoke-static {}, Lc8/KLj;->access$1400()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onBindApp(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 933
    const-string/jumbo v0, "YKAccs.init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accs-Youku onBindApp result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public onBindUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 944
    const-string/jumbo v0, "YKAccs.init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accs-Youku onBindUser result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 928
    return-void
.end method

.method public onSendData(Ljava/lang/String;I)V
    .locals 0
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 955
    return-void
.end method

.method public onUnbindApp(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 938
    const-string/jumbo v0, "YKAccs.init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accs-Youku onUnbindApp result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public onUnbindUser(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 949
    const-string/jumbo v0, "YKAccs.init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accs-Youku onUnbindUser result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method
