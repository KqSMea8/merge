.class public abstract Lc8/PIf;
.super Ljava/lang/Object;
.source "BaseConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NIf;,
        Lc8/MIf;,
        Lc8/OIf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final BROKEN_LINE:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "BaseConnection"


# instance fields
.field private converter2Data:Lc8/MIf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/MIf",
            "<",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;TT;>;"
        }
    .end annotation
.end field

.field private converter2Msg:Lc8/NIf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/NIf",
            "<",
            "Lc8/OIf",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;>;"
        }
    .end annotation
.end field

.field protected status:I

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 64
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    iget v0, p0, Lc8/PIf;->status:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConverter2Data()Lc8/MIf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/MIf",
            "<",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    iget-object v0, p0, Lc8/PIf;->converter2Data:Lc8/MIf;

    if-nez v0, :cond_0

    invoke-static {}, Lc8/PJf;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Converter2Data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/PIf;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lc8/PIf;->converter2Data:Lc8/MIf;

    return-object v0
.end method

.method public getConverter2Msg()Lc8/NIf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/NIf",
            "<",
            "Lc8/OIf",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    iget-object v0, p0, Lc8/PIf;->converter2Msg:Lc8/NIf;

    if-nez v0, :cond_0

    invoke-static {}, Lc8/PJf;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Converter2Msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/PIf;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lc8/PIf;->converter2Msg:Lc8/NIf;

    return-object v0
.end method

.method public onReceive(Lc8/OIf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/OIf",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    .local p1, "receive":Lc8/OIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$Received<TR;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/PIf;->getConverter2Msg()Lc8/NIf;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Lc8/PJf;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Converter2Msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/PIf;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    const-string/jumbo v0, "BaseConnection"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "receive >>>"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lc8/OIf;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lc8/OIf;->dataId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Lc8/OIf;->source:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lc8/PIf;->getConverter2Msg()Lc8/NIf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->compose(Lc8/Ulq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/LIf;

    invoke-direct {v1, p0}, Lc8/LIf;-><init>(Lc8/PIf;)V

    .line 109
    invoke-virtual {v0, v1}, Lc8/Vlq;->flatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/KIf;

    invoke-direct {v1, p0}, Lc8/KIf;-><init>(Lc8/PIf;)V

    .line 116
    invoke-virtual {v0, v1}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    .line 135
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/DIf;->getDownStream()Lc8/VJf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 136
    :cond_2
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/util/Map;)V
    .locals 4
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "BaseConnection"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "type:"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lc8/PIf;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "response:"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "service:"

    aput-object v3, v2, v0

    const/4 v3, 0x6

    if-eqz p3, :cond_0

    const-string/jumbo v0, "service_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/JIf;

    invoke-direct {v1, p0, p1}, Lc8/JIf;-><init>(Lc8/PIf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->flatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/IIf;

    invoke-direct {v1, p0, p2, p3, p1}, Lc8/IIf;-><init>(Lc8/PIf;ILjava/util/Map;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    .line 98
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract send(Lc8/RJf;)V
.end method

.method public setConverter2Data(Lc8/MIf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/MIf",
            "<",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    .local p1, "c2d":Lc8/MIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$Converter2Data<Ljava/util/List<Lcom/taobao/tao/messagekit/core/model/Package;>;TT;>;"
    iput-object p1, p0, Lc8/PIf;->converter2Data:Lc8/MIf;

    .line 42
    return-void
.end method

.method public setConverter2Msg(Lc8/NIf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/NIf",
            "<",
            "Lc8/OIf",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    .local p1, "c2m":Lc8/NIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$Converter2Msg<Lcom/taobao/tao/messagekit/base/model/BaseConnection$Received<TR;>;Ljava/util/List<Lcom/taobao/tao/messagekit/core/model/Package;>;>;"
    iput-object p1, p0, Lc8/PIf;->converter2Msg:Lc8/NIf;

    .line 46
    return-void
.end method

.method public abstract transCode(ILjava/lang/String;)I
.end method

.method public type()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lc8/PIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection<TT;TR;>;"
    iget v0, p0, Lc8/PIf;->type:I

    return v0
.end method
