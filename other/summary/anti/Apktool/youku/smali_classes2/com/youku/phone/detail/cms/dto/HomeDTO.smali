.class public Lcom/youku/phone/detail/cms/dto/HomeDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "HomeDTO.java"


# instance fields
.field private advert:Lcom/youku/phone/detail/cms/dto/HomeAdvertDTO;

.field private channel:Lcom/youku/phone/detail/cms/dto/ChannelDTO;

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ChannelDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected className:Ljava/lang/String;

.field private moduleResult:Lcom/youku/phone/detail/cms/dto/ModulePageResult;

.field private pageName:Ljava/lang/String;

.field private parentChannel:Lcom/youku/phone/detail/cms/dto/ChannelDTO;

.field private spmAB:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 14
    const-string/jumbo v0, "com.youku.haibao.client.dto.HomeDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdvert()Lcom/youku/phone/detail/cms/dto/HomeAdvertDTO;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->advert:Lcom/youku/phone/detail/cms/dto/HomeAdvertDTO;

    return-object v0
.end method

.method public getChannel()Lcom/youku/phone/detail/cms/dto/ChannelDTO;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->channel:Lcom/youku/phone/detail/cms/dto/ChannelDTO;

    return-object v0
.end method

.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ChannelDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getModuleResult()Lcom/youku/phone/detail/cms/dto/ModulePageResult;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->moduleResult:Lcom/youku/phone/detail/cms/dto/ModulePageResult;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentChannel()Lcom/youku/phone/detail/cms/dto/ChannelDTO;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->parentChannel:Lcom/youku/phone/detail/cms/dto/ChannelDTO;

    return-object v0
.end method

.method public getSpmAB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->spmAB:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvert(Lcom/youku/phone/detail/cms/dto/HomeAdvertDTO;)V
    .locals 0
    .param p1, "advert"    # Lcom/youku/phone/detail/cms/dto/HomeAdvertDTO;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->advert:Lcom/youku/phone/detail/cms/dto/HomeAdvertDTO;

    .line 53
    return-void
.end method

.method public setChannel(Lcom/youku/phone/detail/cms/dto/ChannelDTO;)V
    .locals 0
    .param p1, "channel"    # Lcom/youku/phone/detail/cms/dto/ChannelDTO;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->channel:Lcom/youku/phone/detail/cms/dto/ChannelDTO;

    .line 61
    return-void
.end method

.method public setChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ChannelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ChannelDTO;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->channels:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setModuleResult(Lcom/youku/phone/detail/cms/dto/ModulePageResult;)V
    .locals 0
    .param p1, "moduleResult"    # Lcom/youku/phone/detail/cms/dto/ModulePageResult;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->moduleResult:Lcom/youku/phone/detail/cms/dto/ModulePageResult;

    .line 45
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->pageName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setParentChannel(Lcom/youku/phone/detail/cms/dto/ChannelDTO;)V
    .locals 0
    .param p1, "parentChannel"    # Lcom/youku/phone/detail/cms/dto/ChannelDTO;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->parentChannel:Lcom/youku/phone/detail/cms/dto/ChannelDTO;

    .line 29
    return-void
.end method

.method public setSpmAB(Ljava/lang/String;)V
    .locals 0
    .param p1, "spmAB"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/HomeDTO;->spmAB:Ljava/lang/String;

    .line 69
    return-void
.end method
