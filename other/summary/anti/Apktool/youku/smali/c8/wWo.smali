.class public Lc8/wWo;
.super Lc8/xbg;
.source "WXParallaxExt.java"

# interfaces
.implements Lc8/AXf;
.implements Lc8/vXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vWo;,
        Lc8/uWo;
    }
.end annotation


# static fields
.field public static final BINDING_SCROLLER:Ljava/lang/String; = "bindingScroller"

.field public static final PARALLAX:Ljava/lang/String; = "parallax"

.field public static final WX_OPACITY:Ljava/lang/String; = "opacity"

.field public static final WX_SCROLL:Ljava/lang/String; = "scroll"

.field public static final WX_TRANSFORM:Ljava/lang/String; = "transform"


# instance fields
.field private mBackGroundColor:I

.field mBackgroundColor:Lc8/uWo;

.field mBindingRef:Ljava/lang/String;

.field private mOffsetY:F

.field private mScrollable:Lc8/xWo;

.field mTransformPropArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/vWo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lc8/xbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wWo;->mTransformPropArrayList:Ljava/util/ArrayList;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lc8/wWo;->mBackGroundColor:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lc8/wWo;->mOffsetY:F

    .line 75
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "transform"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/wWo;->initTransform(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "opacity"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/wWo;->initOpacity(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/wWo;->initScroll(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/wWo;->initBackgroundColor(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "bindingScroller"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, p0}, Lc8/nVf;->registerOnWXScrollListener(Lc8/AXf;)V

    .line 82
    return-void
.end method

.method private initBackgroundColor(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 121
    :cond_0
    return-void

    .line 104
    :cond_1
    instance-of v5, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_0

    .line 105
    new-instance v5, Lc8/uWo;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lc8/uWo;-><init>(Lc8/wWo;Lc8/tWo;)V

    iput-object v5, p0, Lc8/wWo;->mBackgroundColor:Lc8/uWo;

    move-object v3, p1

    .line 106
    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 108
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "in"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 109
    .local v2, "in":Lcom/alibaba/fastjson/JSONArray;
    iget-object v5, p0, Lc8/wWo;->mBackgroundColor:Lc8/uWo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lc8/uWo;->input:[I

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 111
    iget-object v5, p0, Lc8/wWo;->mBackgroundColor:Lc8/uWo;

    iget-object v5, v5, Lc8/uWo;->input:[I

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lc8/wWo;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    const-string/jumbo v5, "out"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 115
    .local v4, "out":Lcom/alibaba/fastjson/JSONArray;
    iget-object v5, p0, Lc8/wWo;->mBackgroundColor:Lc8/uWo;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lc8/uWo;->output:[I

    .line 116
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 117
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "colorStr":Ljava/lang/String;
    iget-object v5, p0, Lc8/wWo;->mBackgroundColor:Lc8/uWo;

    iget-object v5, v5, Lc8/uWo;->output:[I

    invoke-static {v0}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initOpacity(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 140
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/wWo;->mTransformPropArrayList:Ljava/util/ArrayList;

    new-instance v1, Lc8/vWo;

    const-string/jumbo v2, "opacity"

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p0, v2, p1}, Lc8/vWo;-><init>(Lc8/wWo;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initScroll(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 130
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/wWo;->mTransformPropArrayList:Ljava/util/ArrayList;

    new-instance v1, Lc8/vWo;

    const-string/jumbo v2, "scroll"

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p0, v2, p1}, Lc8/vWo;-><init>(Lc8/wWo;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initTransform(Ljava/lang/Object;)V
    .locals 6
    .param p1, "propStr"    # Ljava/lang/Object;

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 145
    const-string/jumbo v3, "WXParallax initAnimation propStr ==null"

    invoke-static {v3}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void

    .line 149
    :cond_1
    instance-of v3, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 150
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 151
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 152
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 153
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lc8/wWo;->mTransformPropArrayList:Ljava/util/ArrayList;

    new-instance v4, Lc8/vWo;

    const-string/jumbo v5, "type"

    .line 154
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lc8/vWo;-><init>(Lc8/wWo;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 153
    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getOffset()F
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/wWo;->mScrollable:Lc8/xWo;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lc8/wWo;->initScrollable()V

    .line 184
    :cond_0
    iget-object v0, p0, Lc8/wWo;->mScrollable:Lc8/xWo;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lc8/wWo;->mScrollable:Lc8/xWo;

    invoke-interface {v0}, Lc8/xWo;->getScrollOffsetY()F

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lc8/wWo;->mOffsetY:F

    goto :goto_0
.end method

.method public initScrollable()V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v1

    invoke-virtual {p0}, Lc8/wWo;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/Cag;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 93
    .local v0, "comp":Lc8/tbg;
    if-nez v0, :cond_1

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/wWo;->mScrollable:Lc8/xWo;

    .line 98
    .end local v0    # "comp":Lc8/tbg;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v0    # "comp":Lc8/tbg;
    :cond_1
    instance-of v1, v0, Lc8/xWo;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lc8/xWo;

    .end local v0    # "comp":Lc8/tbg;
    iput-object v0, p0, Lc8/wWo;->mScrollable:Lc8/xWo;

    goto :goto_0
.end method

.method public isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/Object;

    .prologue
    .line 162
    invoke-virtual {p0}, Lc8/wWo;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    const-string/jumbo v3, "bindingScroller"

    invoke-virtual {v2, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lc8/wWo;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    .line 165
    .local v0, "root":Lc8/tbg;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lc8/scg;

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v0}, Lc8/tbg;->getFirstScroller()Lc8/ebg;

    move-result-object v1

    .line 167
    .local v1, "scrollable":Lc8/ebg;
    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v1}, Lc8/ebg;->getRef()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    .line 172
    .end local v0    # "root":Lc8/tbg;
    .end local v1    # "scrollable":Lc8/ebg;
    :cond_0
    iget-object v2, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    const/4 v2, 0x1

    .line 177
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/view/View;III)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "newState"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onScrolled(Landroid/view/View;II)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 194
    iget v2, p0, Lc8/wWo;->mOffsetY:F

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, p0, Lc8/wWo;->mOffsetY:F

    .line 196
    invoke-virtual {p0}, Lc8/wWo;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lc8/wWo;->mTransformPropArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vWo;

    .line 198
    .local v1, "creator":Lc8/vWo;
    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v1, v3, v4}, Lc8/vWo;->animate(FF)V

    goto :goto_0

    .line 201
    .end local v1    # "creator":Lc8/vWo;
    :cond_0
    iget-object v2, p0, Lc8/wWo;->mBackgroundColor:Lc8/uWo;

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lc8/wWo;->mBackgroundColor:Lc8/uWo;

    invoke-virtual {v2, p2, p3}, Lc8/uWo;->getColor(II)I

    move-result v0

    .line 203
    .local v0, "color":I
    iget v2, p0, Lc8/wWo;->mBackGroundColor:I

    if-eq v2, v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lc8/wWo;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/qeg;

    invoke-virtual {v2, v0}, Lc8/qeg;->setBackgroundColor(I)V

    .line 205
    iput v0, p0, Lc8/wWo;->mBackGroundColor:I

    .line 209
    .end local v0    # "color":I
    :cond_1
    return-void
.end method

.method public setBindingRef(Ljava/lang/String;)V
    .locals 0
    .param p1, "bindingRef"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "bindingScroller"
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lc8/wWo;->initScrollable()V

    .line 89
    return-void
.end method
