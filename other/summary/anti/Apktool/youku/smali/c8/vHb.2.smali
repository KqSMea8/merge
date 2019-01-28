.class public Lc8/vHb;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vHb;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vHb;->g:Z

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->Auto:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    iput-object v0, p0, Lc8/vHb;->b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    const-string/jumbo v0, "taobao_scheme"

    iput-object v0, p0, Lc8/vHb;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/model/OpenType;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vHb;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vHb;->g:Z

    iput-object p1, p0, Lc8/vHb;->b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    iput-boolean p2, p0, Lc8/vHb;->a:Z

    return-void
.end method


# virtual methods
.method public getBackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/vHb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getClientType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/vHb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()Lcom/alibaba/baichuan/android/trade/model/OpenType;
    .locals 1

    iget-object v0, p0, Lc8/vHb;->b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/vHb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedPush()Z
    .locals 1

    iget-boolean v0, p0, Lc8/vHb;->a:Z

    return v0
.end method

.method public isProxyWebview()Z
    .locals 1

    iget-boolean v0, p0, Lc8/vHb;->g:Z

    return v0
.end method

.method public isShowTitleBar()Z
    .locals 1

    iget-boolean v0, p0, Lc8/vHb;->f:Z

    return v0
.end method

.method public setBackUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/vHb;->c:Ljava/lang/String;

    return-void
.end method

.method public setClientType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/vHb;->d:Ljava/lang/String;

    return-void
.end method

.method public setNeedPush(Z)V
    .locals 0

    iput-boolean p1, p0, Lc8/vHb;->a:Z

    return-void
.end method

.method public setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V
    .locals 0

    iput-object p1, p0, Lc8/vHb;->b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-void
.end method

.method public setProxyWebview(Z)V
    .locals 0

    iput-boolean p1, p0, Lc8/vHb;->g:Z

    return-void
.end method

.method public setShowTitleBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lc8/vHb;->f:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/vHb;->e:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AlibcShowParams{isNeedPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/vHb;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/vHb;->b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/vHb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
