.class public Lcom/youku/phone/detail/cms/dto/ModuleDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "ModuleDTO.java"


# instance fields
.field private actionJSON:Ljava/lang/String;

.field private adId:Ljava/lang/String;

.field private backgroundImg:Ljava/lang/String;

.field protected className:Ljava/lang/String;

.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Lcom/youku/phone/detail/cms/dto/items/IconDTO;

.field private isHiddenHeader:Z

.field public jsonContent:Ljava/lang/String;

.field public keyWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/items/TextItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field private moduleId:Ljava/lang/Long;

.field private scm:Ljava/lang/String;

.field private sportDrawerId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleAction:Lcom/youku/phone/detail/cms/dto/ActionDTO;

.field public titleShow:Ljava/lang/String;

.field private trackInfo:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 20
    const-string/jumbo v0, "com.youku.haibao.client.dto.ModuleDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->actionJSON:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->backgroundImg:Ljava/lang/String;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->components:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()Lcom/youku/phone/detail/cms/dto/items/IconDTO;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->icon:Lcom/youku/phone/detail/cms/dto/items/IconDTO;

    return-object v0
.end method

.method public getKeyWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/items/TextItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->keyWords:Ljava/util/List;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->moduleId:Ljava/lang/Long;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getSportDrawerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->sportDrawerId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAction()Lcom/youku/phone/detail/cms/dto/ActionDTO;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->titleAction:Lcom/youku/phone/detail/cms/dto/ActionDTO;

    return-object v0
.end method

.method public getTitleShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->titleShow:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->trackInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isHiddenHeader()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->isHiddenHeader:Z

    return v0
.end method

.method public setActionJSON(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionJSON"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->actionJSON:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->adId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setBackgroundImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundImg"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->backgroundImg:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setComponents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->components:Ljava/util/List;

    .line 114
    return-void
.end method

.method public setHiddenHeader(Z)V
    .locals 0
    .param p1, "isHiddenHeader"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->isHiddenHeader:Z

    .line 106
    return-void
.end method

.method public setIcon(Lcom/youku/phone/detail/cms/dto/items/IconDTO;)V
    .locals 0
    .param p1, "icon"    # Lcom/youku/phone/detail/cms/dto/items/IconDTO;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->icon:Lcom/youku/phone/detail/cms/dto/items/IconDTO;

    .line 66
    return-void
.end method

.method public setKeyWords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/items/TextItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "keyWords":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/items/TextItemDTO;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->keyWords:Ljava/util/List;

    .line 130
    return-void
.end method

.method public setModuleId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "moduleId"    # Ljava/lang/Long;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->moduleId:Ljava/lang/Long;

    .line 82
    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0
    .param p1, "scm"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->scm:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSportDrawerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportDrawerId"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->sportDrawerId:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->title:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTitleAction(Lcom/youku/phone/detail/cms/dto/ActionDTO;)V
    .locals 0
    .param p1, "titleAction"    # Lcom/youku/phone/detail/cms/dto/ActionDTO;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->titleAction:Lcom/youku/phone/detail/cms/dto/ActionDTO;

    .line 58
    return-void
.end method

.method public setTitleShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleShow"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->titleShow:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTrackInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackInfo"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->trackInfo:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ModuleDTO;->type:Ljava/lang/String;

    .line 98
    return-void
.end method
