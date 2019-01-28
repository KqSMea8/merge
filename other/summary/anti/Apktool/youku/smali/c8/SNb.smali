.class public Lc8/SNb;
.super Landroid/widget/FrameLayout;
.source "KaleidoscopeView.java"

# interfaces
.implements Lc8/TNb;


# instance fields
.field private cacheGroup:Ljava/lang/String;

.field private configJsonStrings:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dataJsonString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private index:I

.field private isUsedExternal:Z

.field private kaleidoscopeConfigDTOInUse:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

.field private kaleidoscopeConfigDTOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;",
            ">;"
        }
    .end annotation
.end field

.field private kaleidoscopeRenderPlugin:Lc8/MNb;

.field private moduleName:Ljava/lang/String;

.field private onLoadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/TNb;",
            ">;"
        }
    .end annotation
.end field

.field private stateInternal:I

.field private typeCode:Ljava/lang/String;

.field private userInfoString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lc8/SNb;->stateInternal:I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    .line 139
    invoke-static {}, Lc8/ONb;->getInstance()Lc8/ONb;

    move-result-object v0

    iget-object v1, p0, Lc8/SNb;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/ONb;->getInject(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-static {}, Lc8/ONb;->getInstance()Lc8/ONb;

    move-result-object v1

    iget-object v2, p0, Lc8/SNb;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/ONb;->getInject(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lc8/SNb;->stateInternal:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    .line 156
    invoke-static {}, Lc8/ONb;->getInstance()Lc8/ONb;

    move-result-object v0

    iget-object v1, p0, Lc8/SNb;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/ONb;->getInject(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-static {}, Lc8/ONb;->getInstance()Lc8/ONb;

    move-result-object v1

    iget-object v2, p0, Lc8/SNb;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/ONb;->getInject(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_0
    return-void
.end method

.method private bindDataImp()V
    .locals 6

    .prologue
    .line 177
    iget-object v1, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    iget-object v2, p0, Lc8/SNb;->context:Landroid/content/Context;

    iget-object v3, p0, Lc8/SNb;->configJsonStrings:Ljava/lang/String;

    iget-object v4, p0, Lc8/SNb;->kaleidoscopeConfigDTOInUse:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    iget-object v4, v4, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/QNb;->getConfigInUseJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/SNb;->dataJsonString:Ljava/util/HashMap;

    iget-object v5, p0, Lc8/SNb;->kaleidoscopeConfigDTOInUse:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    iget-object v5, v5, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->type:Ljava/lang/String;

    .line 179
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 178
    invoke-virtual {v1, v2, v3, v4}, Lc8/MNb;->bindData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const/4 v1, 0x3

    iput v1, p0, Lc8/SNb;->stateInternal:I

    .line 190
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TNb;

    .line 184
    .local v0, "onLoadListener":Lc8/TNb;
    if-eqz v0, :cond_1

    .line 185
    iget-object v2, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    new-instance v3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2, p0, v3}, Lc8/TNb;->onRenderFailed(Lc8/MNb;Landroid/view/View;Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;)V

    goto :goto_1

    .line 188
    .end local v0    # "onLoadListener":Lc8/TNb;
    :cond_2
    const/4 v1, 0x5

    iput v1, p0, Lc8/SNb;->stateInternal:I

    goto :goto_0
.end method

.method private creatViewImp()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 193
    iget-object v2, p0, Lc8/SNb;->kaleidoscopeConfigDTOList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    .line 194
    .local v0, "configDTO":Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;
    invoke-static {}, Lc8/JNb;->getInstance()Lc8/JNb;

    move-result-object v3

    iget-object v4, p0, Lc8/SNb;->moduleName:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc8/JNb;->isSupportRenderPlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->isAble:I

    if-eqz v3, :cond_0

    .line 196
    invoke-static {}, Lc8/JNb;->getInstance()Lc8/JNb;

    move-result-object v2

    iget-object v3, p0, Lc8/SNb;->moduleName:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/JNb;->getKaleidoscopeRenderPlugin(Ljava/lang/String;Ljava/lang/String;)Lc8/NNb;

    move-result-object v2

    .line 197
    invoke-virtual {v2, p0}, Lc8/NNb;->getPlugin(Lc8/SNb;)Lc8/MNb;

    move-result-object v2

    iput-object v2, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    .line 198
    iget-object v2, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    invoke-virtual {v2, p0}, Lc8/MNb;->setOnLoadListener(Lc8/TNb;)V

    .line 199
    iput v6, v0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->isAble:I

    .line 200
    iput-object v0, p0, Lc8/SNb;->kaleidoscopeConfigDTOInUse:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    .line 205
    .end local v0    # "configDTO":Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;
    :cond_1
    iget-object v2, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    if-eqz v2, :cond_4

    .line 206
    iget v2, p0, Lc8/SNb;->stateInternal:I

    if-ne v2, v6, :cond_3

    .line 208
    iget-object v2, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/TNb;

    .line 209
    .local v1, "onLoadListener":Lc8/TNb;
    if-eqz v1, :cond_2

    .line 210
    iget-object v3, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    invoke-interface {v1, v3, p0}, Lc8/TNb;->onRenderStart(Lc8/MNb;Landroid/view/View;)V

    goto :goto_0

    .line 217
    .end local v1    # "onLoadListener":Lc8/TNb;
    :cond_3
    iget-object v2, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    iget-object v3, p0, Lc8/SNb;->context:Landroid/content/Context;

    iget-object v4, p0, Lc8/SNb;->configJsonStrings:Ljava/lang/String;

    iget-object v5, p0, Lc8/SNb;->kaleidoscopeConfigDTOInUse:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    iget-object v5, v5, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/QNb;->getConfigInUseJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/MNb;->creatView(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    const/4 v2, 0x2

    iput v2, p0, Lc8/SNb;->stateInternal:I

    .line 230
    :goto_1
    return-void

    .line 222
    :cond_4
    iget-object v2, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/TNb;

    .line 223
    .restart local v1    # "onLoadListener":Lc8/TNb;
    if-eqz v1, :cond_5

    .line 224
    iget-object v3, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    new-instance v4, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v3, p0, v4}, Lc8/TNb;->onRenderFailed(Lc8/MNb;Landroid/view/View;Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;)V

    goto :goto_2

    .line 227
    .end local v1    # "onLoadListener":Lc8/TNb;
    :cond_6
    const/4 v2, 0x5

    iput v2, p0, Lc8/SNb;->stateInternal:I

    goto :goto_1
.end method

.method private setUsedExternal(Z)V
    .locals 3
    .param p1, "usedExternal"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lc8/SNb;->isUsedExternal:Z

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-static {}, Lc8/HNb;->getInstance()Lc8/HNb;

    move-result-object v0

    iget-object v1, p0, Lc8/SNb;->typeCode:Ljava/lang/String;

    iget-object v2, p0, Lc8/SNb;->cacheGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/HNb;->remove(Ljava/lang/String;Ljava/lang/String;)Lc8/SNb;

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-static {}, Lc8/HNb;->getInstance()Lc8/HNb;

    move-result-object v0

    iget-object v1, p0, Lc8/SNb;->typeCode:Ljava/lang/String;

    iget-object v2, p0, Lc8/SNb;->cacheGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lc8/HNb;->put(Ljava/lang/String;Lc8/SNb;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configJsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p3, "dataJsonString":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p2, p0, Lc8/SNb;->configJsonStrings:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lc8/SNb;->dataJsonString:Ljava/util/HashMap;

    .line 173
    invoke-direct {p0}, Lc8/SNb;->bindDataImp()V

    .line 174
    return-void
.end method

.method public creatView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configJsonString"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p2, p0, Lc8/SNb;->configJsonStrings:Ljava/lang/String;

    .line 165
    invoke-static {p2}, Lc8/QNb;->parseConfigDTOs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/SNb;->kaleidoscopeConfigDTOList:Ljava/util/List;

    .line 166
    iput-object p1, p0, Lc8/SNb;->context:Landroid/content/Context;

    .line 167
    invoke-direct {p0}, Lc8/SNb;->creatViewImp()V

    .line 168
    return-void
.end method

.method public downgraded(Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;)V
    .locals 4
    .param p1, "error"    # Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;

    .prologue
    .line 301
    iget-object v0, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    .line 302
    .local v0, "kaleidoscopeRenderPluginFrom":Lc8/MNb;
    invoke-direct {p0}, Lc8/SNb;->creatViewImp()V

    .line 303
    iget-object v2, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    if-eqz v2, :cond_2

    .line 305
    iget-object v2, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/TNb;

    .line 306
    .local v1, "onLoadListener":Lc8/TNb;
    if-eqz v1, :cond_0

    .line 307
    iget-object v3, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    invoke-interface {v1, v0, v3, p0, p1}, Lc8/TNb;->onRenderDowngrade(Lc8/MNb;Lc8/MNb;Landroid/view/View;Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;)V

    goto :goto_0

    .line 310
    .end local v1    # "onLoadListener":Lc8/TNb;
    :cond_1
    iget-object v2, p0, Lc8/SNb;->dataJsonString:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 311
    invoke-direct {p0}, Lc8/SNb;->bindDataImp()V

    .line 316
    :cond_2
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    invoke-virtual {v0, p1, p2}, Lc8/MNb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lc8/SNb;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lc8/SNb;->index:I

    return v0
.end method

.method public getStateInternal()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lc8/SNb;->stateInternal:I

    return v0
.end method

.method public getUserInfoString()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lc8/SNb;->userInfoString:Ljava/util/HashMap;

    return-object v0
.end method

.method public onLayoutChange(Lc8/MNb;Landroid/view/View;II)V
    .locals 3
    .param p1, "kaleidoscopeRenderPlugin"    # Lc8/MNb;
    .param p2, "renderView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 278
    iget-object v1, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TNb;

    .line 279
    .local v0, "onLoadListener":Lc8/TNb;
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p1, p0, p3, p4}, Lc8/TNb;->onLayoutChange(Lc8/MNb;Landroid/view/View;II)V

    goto :goto_0

    .line 283
    .end local v0    # "onLoadListener":Lc8/TNb;
    :cond_1
    return-void
.end method

.method public onRenderDowngrade(Lc8/MNb;Lc8/MNb;Landroid/view/View;Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;)V
    .locals 0
    .param p1, "kaleidoscopeRenderPluginFrom"    # Lc8/MNb;
    .param p2, "kaleidoscopeRenderPluginTo"    # Lc8/MNb;
    .param p3, "renderView"    # Landroid/view/View;
    .param p4, "error"    # Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;

    .prologue
    .line 272
    return-void
.end method

.method public onRenderFailed(Lc8/MNb;Landroid/view/View;Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;)V
    .locals 2
    .param p1, "kaleidoscopeRenderPlugin"    # Lc8/MNb;
    .param p2, "renderView"    # Landroid/view/View;
    .param p3, "error"    # Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;

    .prologue
    .line 261
    iget-object v0, p0, Lc8/SNb;->kaleidoscopeConfigDTOInUse:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->isAble:I

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/SNb;->kaleidoscopeRenderPlugin:Lc8/MNb;

    .line 263
    invoke-virtual {p0}, Lc8/SNb;->removeAllViews()V

    .line 264
    invoke-virtual {p0, p3}, Lc8/SNb;->downgraded(Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;)V

    .line 265
    return-void
.end method

.method public onRenderStart(Lc8/MNb;Landroid/view/View;)V
    .locals 0
    .param p1, "kaleidoscopeRenderPlugin"    # Lc8/MNb;
    .param p2, "renderView"    # Landroid/view/View;

    .prologue
    .line 236
    return-void
.end method

.method public onRenderSuccess(Lc8/MNb;Landroid/view/View;II)V
    .locals 4
    .param p1, "kaleidoscopeRenderPlugin"    # Lc8/MNb;
    .param p2, "renderView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x4

    .line 241
    invoke-virtual {p0}, Lc8/SNb;->removeAllViews()V

    .line 242
    invoke-virtual {p0, p2}, Lc8/SNb;->addView(Landroid/view/View;)V

    .line 243
    iget v1, p0, Lc8/SNb;->stateInternal:I

    if-eq v1, v3, :cond_1

    .line 245
    iget-object v1, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TNb;

    .line 246
    .local v0, "onLoadListener":Lc8/TNb;
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1, p0, p3, p4}, Lc8/TNb;->onRenderSuccess(Lc8/MNb;Landroid/view/View;II)V

    goto :goto_0

    .line 251
    .end local v0    # "onLoadListener":Lc8/TNb;
    :cond_1
    iput v3, p0, Lc8/SNb;->stateInternal:I

    .line 253
    iget-boolean v1, p0, Lc8/SNb;->isUsedExternal:Z

    if-nez v1, :cond_2

    .line 254
    invoke-static {}, Lc8/HNb;->getInstance()Lc8/HNb;

    move-result-object v1

    iget-object v2, p0, Lc8/SNb;->typeCode:Ljava/lang/String;

    iget-object v3, p0, Lc8/SNb;->cacheGroup:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v3}, Lc8/HNb;->put(Ljava/lang/String;Lc8/SNb;Ljava/lang/String;)V

    .line 256
    :cond_2
    return-void
.end method

.method public setCacheGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheGroup"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lc8/SNb;->cacheGroup:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 124
    iput-object p1, p0, Lc8/SNb;->handler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 115
    iput p1, p0, Lc8/SNb;->index:I

    .line 116
    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/SNb;->moduleName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setOnLoadListener(Lc8/TNb;)V
    .locals 1
    .param p1, "onLoadListener"    # Lc8/TNb;

    .prologue
    .line 128
    iget-object v0, p0, Lc8/SNb;->onLoadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public setRecycle()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/SNb;->setUsedExternal(Z)V

    .line 323
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeCode"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/SNb;->typeCode:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUserInfoString(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "userInfoString":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/SNb;->userInfoString:Ljava/util/HashMap;

    .line 337
    return-void
.end method
