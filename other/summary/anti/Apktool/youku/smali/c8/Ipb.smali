.class public Lc8/Ipb;
.super Lc8/xbg;
.source "WXParallax.java"

# interfaces
.implements Lc8/AXf;
.implements Lc8/vXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hpb;,
        Lc8/Gpb;
    }
.end annotation


# static fields
.field public static final BINDING_SCROLLER:Ljava/lang/String; = "bindingScroller"

.field public static final PARALLAX:Ljava/lang/String; = "parallax"

.field public static final WX_OPACITY:Ljava/lang/String; = "opacity"

.field public static final WX_TRANSFORM:Ljava/lang/String; = "transform"


# instance fields
.field mBackgroundColor:Lc8/Gpb;

.field mBindingRef:Ljava/lang/String;

.field private mOffsetY:F

.field private mPreBackGroundColor:Ljava/lang/Integer;

.field mTransformPropArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Hpb;",
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
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lc8/xbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Ipb;->mTransformPropArrayList:Ljava/util/ArrayList;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Ipb;->mBindingRef:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ipb;->mPreBackGroundColor:Ljava/lang/Integer;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lc8/Ipb;->mOffsetY:F

    .line 65
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "transform"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Ipb;->initTransform(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "opacity"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Ipb;->initOpacity(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Ipb;->initBackgroundColor(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p2}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "bindingScroller"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/Ipb;->mBindingRef:Ljava/lang/String;

    .line 70
    invoke-virtual {p1, p0}, Lc8/nVf;->registerOnWXScrollListener(Lc8/AXf;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lc8/Ipb;)F
    .locals 1
    .param p0, "x0"    # Lc8/Ipb;

    .prologue
    .line 48
    iget v0, p0, Lc8/Ipb;->mOffsetY:F

    return v0
.end method

.method private initBackgroundColor(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 94
    :cond_0
    return-void

    .line 77
    :cond_1
    instance-of v5, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_0

    .line 78
    new-instance v5, Lc8/Gpb;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lc8/Gpb;-><init>(Lc8/Ipb;Lc8/Fpb;)V

    iput-object v5, p0, Lc8/Ipb;->mBackgroundColor:Lc8/Gpb;

    move-object v3, p1

    .line 79
    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 81
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "in"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 82
    .local v2, "in":Lcom/alibaba/fastjson/JSONArray;
    iget-object v5, p0, Lc8/Ipb;->mBackgroundColor:Lc8/Gpb;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lc8/Gpb;->input:[I

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 84
    iget-object v5, p0, Lc8/Ipb;->mBackgroundColor:Lc8/Gpb;

    iget-object v5, v5, Lc8/Gpb;->input:[I

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lc8/Ipb;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    const-string/jumbo v5, "out"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 88
    .local v4, "out":Lcom/alibaba/fastjson/JSONArray;
    iget-object v5, p0, Lc8/Ipb;->mBackgroundColor:Lc8/Gpb;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lc8/Gpb;->output:[I

    .line 89
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 90
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "colorStr":Ljava/lang/String;
    iget-object v5, p0, Lc8/Ipb;->mBackgroundColor:Lc8/Gpb;

    iget-object v5, v5, Lc8/Gpb;->output:[I

    invoke-static {v0}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initOpacity(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 104
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lc8/Ipb;->mTransformPropArrayList:Ljava/util/ArrayList;

    new-instance v1, Lc8/Hpb;

    const-string/jumbo v2, "opacity"

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p0, v2, p1}, Lc8/Hpb;-><init>(Lc8/Ipb;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initTransform(Ljava/lang/Object;)V
    .locals 6
    .param p1, "propStr"    # Ljava/lang/Object;

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 109
    const-string/jumbo v3, "WXParallax initAnimation propStr ==null"

    invoke-static {v3}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void

    .line 113
    :cond_1
    instance-of v3, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 114
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 115
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 116
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 117
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lc8/Ipb;->mTransformPropArrayList:Ljava/util/ArrayList;

    new-instance v4, Lc8/Hpb;

    const-string/jumbo v5, "type"

    .line 118
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lc8/Hpb;-><init>(Lc8/Ipb;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 117
    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p0}, Lc8/Ipb;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    const-string/jumbo v3, "bindingScroller"

    invoke-virtual {v2, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc8/Ipb;->mBindingRef:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lc8/Ipb;->mBindingRef:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lc8/Ipb;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getRootComponent()Lc8/tbg;

    move-result-object v0

    .line 129
    .local v0, "root":Lc8/tbg;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lc8/scg;

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0}, Lc8/tbg;->getFirstScroller()Lc8/ebg;

    move-result-object v1

    .line 131
    .local v1, "scrollable":Lc8/ebg;
    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v1}, Lc8/ebg;->getRef()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Ipb;->mBindingRef:Ljava/lang/String;

    .line 136
    .end local v0    # "root":Lc8/tbg;
    .end local v1    # "scrollable":Lc8/ebg;
    :cond_0
    iget-object v2, p0, Lc8/Ipb;->mBindingRef:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/Ipb;->mBindingRef:Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    const/4 v2, 0x1

    .line 141
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
    .line 167
    return-void
.end method

.method public onScrolled(Landroid/view/View;II)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 147
    iget v2, p0, Lc8/Ipb;->mOffsetY:F

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, p0, Lc8/Ipb;->mOffsetY:F

    .line 149
    invoke-virtual {p0}, Lc8/Ipb;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lc8/Ipb;->mTransformPropArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Hpb;

    .line 151
    .local v1, "creator":Lc8/Hpb;
    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v1, v3, v4}, Lc8/Hpb;->animate(FF)V

    goto :goto_0

    .line 154
    .end local v1    # "creator":Lc8/Hpb;
    :cond_0
    iget-object v2, p0, Lc8/Ipb;->mBackgroundColor:Lc8/Gpb;

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lc8/Ipb;->mBackgroundColor:Lc8/Gpb;

    invoke-virtual {v2, p2, p3}, Lc8/Gpb;->getColor(II)I

    move-result v0

    .line 156
    .local v0, "color":I
    iget-object v2, p0, Lc8/Ipb;->mPreBackGroundColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Ipb;->mPreBackGroundColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 157
    :cond_1
    invoke-virtual {p0}, Lc8/Ipb;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/qeg;

    invoke-virtual {v2, v0}, Lc8/qeg;->setBackgroundColor(I)V

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lc8/Ipb;->mPreBackGroundColor:Ljava/lang/Integer;

    .line 162
    .end local v0    # "color":I
    :cond_2
    return-void
.end method
