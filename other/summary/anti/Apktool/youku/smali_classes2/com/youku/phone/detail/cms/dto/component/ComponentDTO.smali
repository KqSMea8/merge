.class public Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "ComponentDTO.java"


# instance fields
.field private action:Lcom/youku/phone/detail/cms/dto/SeriesActionDTO;

.field private asyncLoad:Z

.field private backgroundImg:Ljava/lang/String;

.field private changeNum:I

.field protected className:Ljava/lang/String;

.field private componentId:Ljava/lang/Long;

.field private drawerTitle:Ljava/lang/String;

.field private embedded:Z

.field private filterName:Ljava/lang/String;

.field private hasFooter:Z

.field public item:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private itemResult:Lcom/youku/phone/detail/cms/dto/ItemPageResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/phone/detail/cms/dto/ItemPageResult",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field private line:I

.field private parentCompId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private template:Lcom/youku/phone/detail/cms/dto/TemplateDTO;

.field private title:Ljava/lang/String;

.field private titleAction:Lcom/youku/phone/detail/cms/dto/ActionDTO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 22
    const-string/jumbo v0, "com.youku.haibao.api.bo.ComponentBO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionDTO()Lcom/youku/phone/detail/cms/dto/SeriesActionDTO;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->action:Lcom/youku/phone/detail/cms/dto/SeriesActionDTO;

    return-object v0
.end method

.method public getAsyncLoad()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->asyncLoad:Z

    return v0
.end method

.method public getBackgroundImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->backgroundImg:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeNum()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->changeNum:I

    return v0
.end method

.method public getComponentId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->componentId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDrawerTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->drawerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemResult()Lcom/youku/phone/detail/cms/dto/ItemPageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/youku/phone/detail/cms/dto/ItemPageResult",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->itemResult:Lcom/youku/phone/detail/cms/dto/ItemPageResult;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->line:I

    return v0
.end method

.method public getParentCompId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->parentCompId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Lcom/youku/phone/detail/cms/dto/TemplateDTO;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->template:Lcom/youku/phone/detail/cms/dto/TemplateDTO;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAction()Lcom/youku/phone/detail/cms/dto/ActionDTO;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->titleAction:Lcom/youku/phone/detail/cms/dto/ActionDTO;

    return-object v0
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->embedded:Z

    return v0
.end method

.method public isHasFooter()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->hasFooter:Z

    return v0
.end method

.method public setActionDTO(Lcom/youku/phone/detail/cms/dto/SeriesActionDTO;)V
    .locals 0
    .param p1, "actionDTO"    # Lcom/youku/phone/detail/cms/dto/SeriesActionDTO;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->action:Lcom/youku/phone/detail/cms/dto/SeriesActionDTO;

    .line 82
    return-void
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .param p1, "asyncLoad"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->asyncLoad:Z

    .line 66
    return-void
.end method

.method public setBackgroundImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundImg"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->backgroundImg:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setChangeNum(I)V
    .locals 0
    .param p1, "changeNum"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->changeNum:I

    .line 90
    return-void
.end method

.method public setComponentId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "componentId"    # Ljava/lang/Long;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->componentId:Ljava/lang/Long;

    .line 114
    return-void
.end method

.method public setDrawerTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "drawerTitle"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->drawerTitle:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setEmbedded(Z)V
    .locals 0
    .param p1, "embedded"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->embedded:Z

    .line 58
    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->filterName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setHasFooter(Z)V
    .locals 0
    .param p1, "hasFooter"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->hasFooter:Z

    .line 138
    return-void
.end method

.method public setItemResult(Lcom/youku/phone/detail/cms/dto/ItemPageResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/phone/detail/cms/dto/ItemPageResult",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "itemResult":Lcom/youku/phone/detail/cms/dto/ItemPageResult;, "Lcom/youku/phone/detail/cms/dto/ItemPageResult<Lcom/youku/phone/detail/cms/dto/ItemDTO;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->itemResult:Lcom/youku/phone/detail/cms/dto/ItemPageResult;

    .line 106
    return-void
.end method

.method public setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->line:I

    .line 98
    return-void
.end method

.method public setParentCompId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentCompId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->parentCompId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->source:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setTemplate(Lcom/youku/phone/detail/cms/dto/TemplateDTO;)V
    .locals 0
    .param p1, "template"    # Lcom/youku/phone/detail/cms/dto/TemplateDTO;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->template:Lcom/youku/phone/detail/cms/dto/TemplateDTO;

    .line 130
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->title:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setTitleAction(Lcom/youku/phone/detail/cms/dto/ActionDTO;)V
    .locals 0
    .param p1, "titleAction"    # Lcom/youku/phone/detail/cms/dto/ActionDTO;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;->titleAction:Lcom/youku/phone/detail/cms/dto/ActionDTO;

    .line 202
    return-void
.end method
