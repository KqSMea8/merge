.class public abstract Lc8/tbg;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Lc8/Cdg;
.implements Lc8/MUf;
.implements Lc8/yXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sbg;,
        Lc8/pbg;,
        Lc8/rbg;,
        Lc8/qbg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/MUf;",
        "Lc8/yXf;",
        "Lc8/Cdg;"
    }
.end annotation


# static fields
.field public static final PROP_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field public static final PROP_FS_MATCH_PARENT:Ljava/lang/String; = "m"

.field public static final PROP_FS_WRAP_CONTENT:Ljava/lang/String; = "w"

.field public static final STATE_ALL_FINISH:I = 0x2

.field public static final STATE_DOM_FINISH:I = 0x0

.field public static final STATE_UI_FINISH:I = 0x1

.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x1

.field public static mComponentNum:I


# instance fields
.field private isUsing:Z

.field private mAbsoluteX:I

.field private mAbsoluteY:I

.field private mAnimationHolder:Lc8/Lag;

.field private mAppendEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundDrawable:Lc8/Ieg;

.field private mClickEventListener:Lc8/qbg;

.field private mContext:Landroid/content/Context;

.field private mCurrentRef:Ljava/lang/String;

.field private volatile mDomObj:Lc8/qYf;

.field private mFixedProp:I

.field private mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/rbg;",
            ">;"
        }
    .end annotation
.end field

.field private mGesture:Lc8/Teg;

.field private mGestureType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHolder:Lc8/rag;

.field mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHostClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/qbg;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:Lc8/nVf;

.field private mIsDestroyed:Z

.field private mIsDisabled:Z

.field private mLastBoxShadowId:Ljava/lang/String;

.field private mNeedLayoutOnAnimation:Z

.field private volatile mParent:Lc8/scg;

.field private mPesudoStatus:Lc8/Ddg;

.field private mPreRealHeight:I

.field private mPreRealLeft:I

.field private mPreRealTop:I

.field private mPreRealWidth:I

.field private mRippleBackground:Landroid/graphics/drawable/Drawable;

.field private mStickyOffset:I

.field public mTraceInfo:Lc8/lag;

.field private mType:I

.field private waste:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput v0, Lc8/tbg;->mComponentNum:I

    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 255
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;I)V

    .line 256
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;I)V
    .locals 3
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "type"    # I

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v2, p0, Lc8/tbg;->mFixedProp:I

    .line 129
    iput v2, p0, Lc8/tbg;->mAbsoluteY:I

    .line 130
    iput v2, p0, Lc8/tbg;->mAbsoluteX:I

    .line 135
    iput v2, p0, Lc8/tbg;->mPreRealWidth:I

    .line 136
    iput v2, p0, Lc8/tbg;->mPreRealHeight:I

    .line 137
    iput v2, p0, Lc8/tbg;->mPreRealLeft:I

    .line 138
    iput v2, p0, Lc8/tbg;->mPreRealTop:I

    .line 139
    iput v2, p0, Lc8/tbg;->mStickyOffset:I

    .line 142
    iput-boolean v2, p0, Lc8/tbg;->isUsing:Z

    .line 146
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lc8/tbg;->mAppendEvents:Ljava/util/Set;

    .line 148
    new-instance v1, Lc8/Ddg;

    invoke-direct {v1}, Lc8/Ddg;-><init>()V

    iput-object v1, p0, Lc8/tbg;->mPesudoStatus:Lc8/Ddg;

    .line 149
    iput-boolean v2, p0, Lc8/tbg;->mIsDestroyed:Z

    .line 150
    iput-boolean v2, p0, Lc8/tbg;->mIsDisabled:Z

    .line 151
    iput v2, p0, Lc8/tbg;->mType:I

    .line 152
    iput-boolean v2, p0, Lc8/tbg;->mNeedLayoutOnAnimation:Z

    .line 155
    new-instance v1, Lc8/lag;

    invoke-direct {v1}, Lc8/lag;-><init>()V

    iput-object v1, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    .line 160
    iput-boolean v2, p0, Lc8/tbg;->waste:Z

    .line 173
    new-instance v1, Lc8/kbg;

    invoke-direct {v1, p0}, Lc8/kbg;-><init>(Lc8/tbg;)V

    iput-object v1, p0, Lc8/tbg;->mClickEventListener:Lc8/qbg;

    .line 259
    iput-object p1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    .line 260
    iget-object v1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lc8/tbg;->mContext:Landroid/content/Context;

    .line 261
    iput-object p3, p0, Lc8/tbg;->mParent:Lc8/scg;

    .line 262
    iput p4, p0, Lc8/tbg;->mType:I

    .line 263
    invoke-virtual {p2}, Lc8/HYf;->clone()Lc8/HYf;

    move-result-object v1

    iput-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    .line 264
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v1}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/tbg;->mCurrentRef:Ljava/lang/String;

    .line 265
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lc8/tbg;->mGestureType:Ljava/util/Set;

    .line 266
    sget v1, Lc8/tbg;->mComponentNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lc8/tbg;->mComponentNum:I

    .line 267
    invoke-virtual {p0}, Lc8/tbg;->onCreate()V

    .line 269
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getComponentObserver()Lc8/LUf;

    move-result-object v0

    .local v0, "observer":Lc8/LUf;
    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, p0}, Lc8/LUf;->onCreate(Lc8/tbg;)V

    .line 272
    :cond_0
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 247
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lc8/tbg;)Lc8/nVf;
    .locals 1
    .param p0, "x0"    # Lc8/tbg;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    return-object v0
.end method

.method static synthetic access$100(Lc8/tbg;)Lc8/qYf;
    .locals 1
    .param p0, "x0"    # Lc8/tbg;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    return-object v0
.end method

.method static synthetic access$200(Lc8/tbg;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/tbg;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/tbg;->mFocusChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lc8/tbg;)Lc8/Teg;
    .locals 1
    .param p0, "x0"    # Lc8/tbg;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/tbg;->mGesture:Lc8/Teg;

    return-object v0
.end method

.method static synthetic access$400(Lc8/tbg;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/tbg;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lc8/tbg;)Lc8/Ieg;
    .locals 1
    .param p0, "x0"    # Lc8/tbg;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    return-object v0
.end method

.method private addEvents()V
    .locals 3

    .prologue
    .line 653
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v0

    .line 654
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 655
    iget-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lc8/tbg;->addEvent(Ljava/lang/String;)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-direct {p0}, Lc8/tbg;->setActiveTouchListener()V

    .line 658
    return-void
.end method

.method private needGestureDetector(Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v4, 0x1

    .line 1081
    iget-object v5, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1082
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    move-result-object v0

    .local v0, "arr$":[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1083
    .local v1, "gesture":Lc8/Weg;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1093
    .end local v0    # "arr$":[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
    .end local v1    # "gesture":Lc8/Weg;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 1082
    .restart local v0    # "arr$":[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
    .restart local v1    # "gesture":Lc8/Weg;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1087
    .end local v1    # "gesture":Lc8/Weg;
    :cond_2
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    move-result-object v0

    .local v0, "arr$":[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1088
    .restart local v1    # "gesture":Lc8/Weg;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1087
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1093
    .end local v0    # "arr$":[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
    .end local v1    # "gesture":Lc8/Weg;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v7, 0x0

    .line 1354
    :try_start_0
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/PYf;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1355
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/PYf;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v4

    .line 1357
    .local v4, "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "backgroundColor"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1358
    .local v1, "bgColor":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1359
    .local v2, "colorInt":I
    if-eqz v1, :cond_1

    .line 1360
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v2

    .line 1361
    if-nez v2, :cond_1

    .line 1390
    .end local v1    # "bgColor":Ljava/lang/Object;
    .end local v2    # "colorInt":I
    .end local v4    # "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v7

    .line 1366
    .restart local v1    # "bgColor":Ljava/lang/Object;
    .restart local v2    # "colorInt":I
    .restart local v4    # "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v8, "backgroundColor:active"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1367
    .local v0, "bg":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v5

    .line 1371
    .local v5, "rippleColor":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 1372
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v8, 0x1

    new-array v8, v8, [[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v5, v9, v10

    invoke-direct {v3, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1375
    .local v3, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v8, Lc8/obg;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v10, 0x0

    invoke-direct {v8, p0, v3, v9, v10}, Lc8/obg;-><init>(Lc8/tbg;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 1387
    .end local v0    # "bg":Ljava/lang/Object;
    .end local v1    # "bgColor":Ljava/lang/Object;
    .end local v2    # "colorInt":I
    .end local v3    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v4    # "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "rippleColor":I
    :catch_0
    move-exception v6

    .line 1388
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "Exception on create ripple: "

    invoke-static {v8, v6}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setActiveTouchListener()V
    .locals 5

    .prologue
    .line 1755
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v3, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/PYf;->getPesudoStyles()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, ":active"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1757
    .local v0, "hasActivePesudo":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1758
    invoke-virtual {p0}, Lc8/tbg;->isConsumeTouch()Z

    move-result v1

    .line 1759
    .local v1, "hasTouchConsumer":Z
    new-instance v4, Lc8/Edg;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v4, p0, v3}, Lc8/Edg;-><init>(Lc8/Cdg;Z)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1761
    .end local v1    # "hasTouchConsumer":Z
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 1759
    .restart local v1    # "hasTouchConsumer":Z
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V
    .locals 11
    .param p1, "realWidth"    # I
    .param p2, "realHeight"    # I
    .param p3, "realLeft"    # I
    .param p4, "realTop"    # I
    .param p5, "realRight"    # I
    .param p6, "realBottom"    # I
    .param p7, "rawOffset"    # Landroid/graphics/Point;

    .prologue
    .line 508
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v2

    .line 511
    .local v2, "UIImp":Lc8/Gdg;
    invoke-virtual {v2, p0}, Lc8/Gdg;->getFlatComponentAncestor(Lc8/tbg;)Lc8/Hdg;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 512
    instance-of v0, p0, Lc8/Fdg;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lc8/Fdg;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lc8/Fdg;->promoteToView(Z)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 513
    check-cast v0, Lc8/Fdg;

    invoke-interface {v0}, Lc8/Fdg;->getOrCreateFlatWidget()Lc8/Ldg;

    move-result-object v1

    .local v1, "widget":Lc8/Ldg;
    :goto_0
    move-object v0, p0

    move-object/from16 v3, p7

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p5

    move v8, p4

    move/from16 v9, p6

    .line 517
    invoke-direct/range {v0 .. v9}, Lc8/tbg;->setWidgetParams(Lc8/Ldg;Lc8/Gdg;Landroid/graphics/Point;IIIIII)V

    .line 536
    .end local v1    # "widget":Lc8/Ldg;
    :cond_0
    :goto_1
    return-void

    .line 515
    :cond_1
    invoke-virtual {v2, p0}, Lc8/Gdg;->getAndroidViewWidget(Lc8/tbg;)Lc8/Idg;

    move-result-object v1

    .restart local v1    # "widget":Lc8/Ldg;
    goto :goto_0

    .line 519
    .end local v1    # "widget":Lc8/Ldg;
    :cond_2
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lc8/tbg;->clearBoxShadow()V

    .line 522
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    iget-object v4, p0, Lc8/tbg;->mHost:Landroid/view/View;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p5

    move v9, p4

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lc8/tbg;->setFixedHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 528
    :goto_2
    iput p1, p0, Lc8/tbg;->mPreRealWidth:I

    .line 529
    iput p2, p0, Lc8/tbg;->mPreRealHeight:I

    .line 530
    iput p3, p0, Lc8/tbg;->mPreRealLeft:I

    .line 531
    iput p4, p0, Lc8/tbg;->mPreRealTop:I

    .line 532
    invoke-virtual {p0}, Lc8/tbg;->onFinishLayout()V

    .line 534
    invoke-virtual {p0}, Lc8/tbg;->updateBoxShadow()V

    goto :goto_1

    .line 526
    :cond_3
    iget-object v4, p0, Lc8/tbg;->mHost:Landroid/view/View;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p5

    move v9, p4

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lc8/tbg;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_2
.end method

.method private setFixedHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 4
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    const/4 v1, -0x2

    .line 592
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 594
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 595
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 596
    invoke-virtual {v0, p4, p6, p5, p7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 597
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-object v1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v1, p1}, Lc8/nVf;->moveFixedView(Landroid/view/View;)V

    .line 600
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const-string/jumbo v1, "Weex_Fixed_Style"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WXComponent:setLayout :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v1, "Weex_Fixed_Style"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WXComponent:setLayout Left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/PYf;->getLeft()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/PYf;->getTop()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    return-void
.end method

.method private setFixedSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "fixedSize"    # Ljava/lang/String;

    .prologue
    .line 982
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, "m"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    const/4 v1, -0x1

    iput v1, p0, Lc8/tbg;->mFixedProp:I

    .line 990
    :goto_0
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 992
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 993
    iget v1, p0, Lc8/tbg;->mFixedProp:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 994
    iget v1, p0, Lc8/tbg;->mFixedProp:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 995
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 984
    :cond_1
    const-string/jumbo v1, "w"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 985
    const/4 v1, -0x2

    iput v1, p0, Lc8/tbg;->mFixedProp:I

    goto :goto_0

    .line 987
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lc8/tbg;->mFixedProp:I

    goto :goto_1
.end method

.method private setWidgetParams(Lc8/Ldg;Lc8/Gdg;Landroid/graphics/Point;IIIIII)V
    .locals 14
    .param p1, "widget"    # Lc8/Ldg;
    .param p2, "UIImp"    # Lc8/Gdg;
    .param p3, "rawoffset"    # Landroid/graphics/Point;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "left"    # I
    .param p7, "right"    # I
    .param p8, "top"    # I
    .param p9, "bottom"    # I

    .prologue
    .line 540
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 541
    .local v11, "childOffset":Landroid/graphics/Point;
    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    instance-of v2, v2, Lc8/Fdg;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lc8/Gdg;->getFlatComponentAncestor(Lc8/tbg;)Lc8/Hdg;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lc8/Gdg;->getAndroidViewWidget(Lc8/tbg;)Lc8/Idg;

    move-result-object v2

    if-nez v2, :cond_3

    .line 545
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 551
    :goto_0
    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    instance-of v2, v2, Lc8/Fdg;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lc8/Gdg;->getFlatComponentAncestor(Lc8/tbg;)Lc8/Hdg;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lc8/Gdg;->getAndroidViewWidget(Lc8/tbg;)Lc8/Idg;

    move-result-object v2

    if-nez v2, :cond_0

    .line 554
    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    check-cast v2, Lc8/Fdg;

    invoke-interface {v2}, Lc8/Fdg;->getOrCreateFlatWidget()Lc8/Ldg;

    move-result-object v2

    invoke-interface {v2}, Lc8/Ldg;->getLocInFlatContainer()Landroid/graphics/Point;

    move-result-object v13

    .line 555
    .local v13, "parentLayoutOffset":Landroid/graphics/Point;
    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 557
    .end local v13    # "parentLayoutOffset":Landroid/graphics/Point;
    :cond_0
    iget-object v2, p0, Lc8/tbg;->mParent:Lc8/scg;

    iget-object v4, p0, Lc8/tbg;->mHost:Landroid/view/View;

    move-object v3, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lc8/scg;->getChildLayoutParams(Lc8/tbg;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 559
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 560
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 p4, v0

    .line 561
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 p5, v0

    move-object v2, v12

    .line 562
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 p6, v0

    move-object v2, v12

    .line 563
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 p7, v0

    move-object v2, v12

    .line 564
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p8, v0

    .line 565
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 p9, v0

    :cond_1
    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object v9, v11

    .line 568
    invoke-interface/range {v2 .. v9}, Lc8/Ldg;->setLayout(IIIIIILandroid/graphics/Point;)V

    .line 570
    instance-of v2, p1, Lc8/Idg;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lc8/Idg;

    invoke-virtual {v2}, Lc8/Idg;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 572
    check-cast p1, Lc8/Idg;

    .end local p1    # "widget":Lc8/Ldg;
    invoke-virtual {p1}, Lc8/Idg;->getView()Landroid/view/View;

    move-result-object v3

    iget v6, v11, Landroid/graphics/Point;->x:I

    iget v8, v11, Landroid/graphics/Point;->y:I

    move-object v2, p0

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v2 .. v9}, Lc8/tbg;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 575
    :cond_2
    return-void

    .line 548
    .restart local p1    # "widget":Lc8/Ldg;
    :cond_3
    move/from16 v0, p6

    move/from16 v1, p8

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0
.end method

.method private updateElevation()V
    .locals 3

    .prologue
    .line 1527
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lc8/xYf;->getElevation(I)F

    move-result v0

    .line 1528
    .local v0, "elevation":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1529
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1531
    :cond_0
    return-void
.end method

.method private updateStyleByPesudo(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1802
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1803
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Lc8/KYf;

    invoke-direct {v2}, Lc8/KYf;-><init>()V

    .line 1804
    .local v2, "task":Lc8/KYf;
    invoke-virtual {p0}, Lc8/tbg;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/KYf;->instanceId:Ljava/lang/String;

    .line 1805
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lc8/KYf;->args:Ljava/util/List;

    .line 1807
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1808
    .local v1, "styleJson":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, v2, Lc8/KYf;->args:Ljava/util/List;

    invoke-virtual {p0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1809
    iget-object v3, v2, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1810
    iget-object v3, v2, Lc8/KYf;->args:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1811
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1812
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1813
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/EYf;->sendMessage(Landroid/os/Message;)V

    .line 1814
    return-void
.end method


# virtual methods
.method protected final addClickListener(Lc8/qbg;)V
    .locals 2
    .param p1, "l"    # Lc8/qbg;

    .prologue
    .line 381
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    .line 384
    new-instance v1, Lc8/mbg;

    invoke-direct {v1, p0}, Lc8/mbg;-><init>(Lc8/tbg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    :cond_0
    iget-object v1, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addEvent(Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 1010
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/tbg;->addEvent(Ljava/lang/String;)V

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    instance-of v2, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1013
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1014
    .local v0, "bindings":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "eventName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1016
    invoke-virtual {p0, v1}, Lc8/tbg;->addEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1026
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/tbg;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v3, p0, Lc8/tbg;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v2

    .line 1034
    .local v2, "view":Landroid/view/View;
    const-string/jumbo v3, "click"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1035
    iget-object v3, p0, Lc8/tbg;->mClickEventListener:Lc8/qbg;

    invoke-virtual {p0, v3}, Lc8/tbg;->addClickListener(Lc8/qbg;)V

    goto :goto_0

    .line 1036
    :cond_2
    const-string/jumbo v3, "focus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "blur"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1037
    :cond_3
    new-instance v3, Lc8/nbg;

    invoke-direct {v3, p0}, Lc8/nbg;-><init>(Lc8/tbg;)V

    invoke-virtual {p0, v3}, Lc8/tbg;->addFocusChangeListener(Lc8/rbg;)V

    goto :goto_0

    .line 1044
    :cond_4
    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lc8/tbg;->needGestureDetector(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1046
    instance-of v3, v2, Lc8/Ueg;

    if-eqz v3, :cond_6

    .line 1047
    iget-object v3, p0, Lc8/tbg;->mGesture:Lc8/Teg;

    if-nez v3, :cond_5

    .line 1048
    new-instance v3, Lc8/Teg;

    iget-object v4, p0, Lc8/tbg;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lc8/Teg;-><init>(Lc8/tbg;Landroid/content/Context;)V

    iput-object v3, p0, Lc8/tbg;->mGesture:Lc8/Teg;

    .line 1049
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    const-string/jumbo v4, "preventMoveEvent"

    invoke-virtual {v3, v4}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1050
    .local v0, "isPreventMove":Z
    iget-object v3, p0, Lc8/tbg;->mGesture:Lc8/Teg;

    invoke-virtual {v3, v0}, Lc8/Teg;->setPreventMoveEvent(Z)V

    .line 1052
    .end local v0    # "isPreventMove":Z
    :cond_5
    iget-object v3, p0, Lc8/tbg;->mGestureType:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1053
    check-cast v2, Lc8/Ueg;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lc8/tbg;->mGesture:Lc8/Teg;

    invoke-interface {v2, v3}, Lc8/Ueg;->registerGestureListener(Lc8/Teg;)V

    goto :goto_0

    .line 1055
    .restart local v2    # "view":Landroid/view/View;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " don\'t implement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "WXGestureObservable, so no gesture is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1059
    :cond_7
    invoke-virtual {p0}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v1

    .line 1060
    .local v1, "scroller":Lc8/ebg;
    const-string/jumbo v3, "appear"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    .line 1061
    invoke-interface {v1, p0}, Lc8/ebg;->bindAppearEvent(Lc8/tbg;)V

    .line 1063
    :cond_8
    const-string/jumbo v3, "disappear"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1064
    invoke-interface {v1, p0}, Lc8/ebg;->bindDisappearEvent(Lc8/tbg;)V

    goto/16 :goto_0
.end method

.method protected final addFocusChangeListener(Lc8/rbg;)V
    .locals 2
    .param p1, "l"    # Lc8/rbg;

    .prologue
    .line 360
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 361
    iget-object v1, p0, Lc8/tbg;->mFocusChangeListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/tbg;->mFocusChangeListeners:Ljava/util/List;

    .line 363
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 364
    new-instance v1, Lc8/lbg;

    invoke-direct {v1, p0}, Lc8/lbg;-><init>(Lc8/tbg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 375
    :cond_0
    iget-object v1, p0, Lc8/tbg;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected appendEventToDOM(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1005
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v0

    invoke-virtual {p0}, Lc8/tbg;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lc8/YYf;->getAddEvent(Ljava/lang/String;Ljava/lang/String;)Lc8/fYf;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/EYf;->postAction(Ljava/lang/String;Lc8/fYf;Z)V

    .line 1006
    return-void
.end method

.method public applyLayoutAndEvent(Lc8/tbg;)V
    .locals 8
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 346
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 347
    .local v0, "startNanos":J
    invoke-virtual {p0}, Lc8/tbg;->isLazy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    if-nez p1, :cond_0

    .line 349
    move-object p1, p0

    .line 351
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/tbg;->setLayout(Lc8/qYf;)V

    .line 352
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getPadding()Lc8/IZf;

    move-result-object v2

    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getBorder()Lc8/IZf;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lc8/tbg;->setPadding(Lc8/IZf;Lc8/IZf;)V

    .line 353
    invoke-direct {p0}, Lc8/tbg;->addEvents()V

    .line 355
    :cond_1
    iget-object v2, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v4, v2, Lc8/lag;->uiThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v2, Lc8/lag;->uiThreadNanos:J

    .line 356
    return-void
.end method

.method public bindData(Lc8/tbg;)V
    .locals 8
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 409
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 410
    .local v0, "startNanos":J
    invoke-virtual {p0}, Lc8/tbg;->isLazy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    if-nez p1, :cond_0

    .line 412
    move-object p1, p0

    .line 414
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/tbg;->mCurrentRef:Ljava/lang/String;

    .line 415
    invoke-virtual {p0, p1}, Lc8/tbg;->updateStyle(Lc8/tbg;)V

    .line 416
    invoke-virtual {p0, p1}, Lc8/tbg;->updateAttrs(Lc8/tbg;)V

    .line 417
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getExtra()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/tbg;->updateExtra(Ljava/lang/Object;)V

    .line 419
    :cond_1
    iget-object v2, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v4, v2, Lc8/lag;->uiThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v2, Lc8/lag;->uiThreadNanos:J

    .line 420
    return-void
.end method

.method public bindHolder(Lc8/rag;)V
    .locals 0
    .param p1, "holder"    # Lc8/rag;

    .prologue
    .line 279
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-object p1, p0, Lc8/tbg;->mHolder:Lc8/rag;

    .line 280
    return-void
.end method

.method public canRecycled()Z
    .locals 1

    .prologue
    .line 1821
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->isSticky()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/xYf;->canRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected clearBoxShadow()V
    .locals 5

    .prologue
    .line 936
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Lc8/Sfg;->isBoxShadowEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 937
    const-string/jumbo v3, "BoxShadow"

    const-string/jumbo v4, "box-shadow disabled"

    invoke-static {v3, v4}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .end local p0    # "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local v2, "target":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 941
    .end local v2    # "target":Landroid/view/View;
    .restart local p0    # "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :cond_1
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 942
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    const-string/jumbo v4, "boxShadow"

    invoke-virtual {v3, v4}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 943
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 944
    const-string/jumbo v3, "BoxShadow"

    const-string/jumbo v4, "no box-shadow"

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 949
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    .line 950
    .restart local v2    # "target":Landroid/view/View;
    instance-of v3, p0, Lc8/scg;

    if-eqz v3, :cond_3

    .line 951
    check-cast p0, Lc8/scg;

    .end local p0    # "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lc8/scg;->getBoxShadowHost(Z)Landroid/view/View;

    move-result-object v2

    .line 954
    :cond_3
    if-eqz v2, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 955
    invoke-virtual {v2}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    .line 956
    .local v1, "overlay":Landroid/view/ViewOverlay;
    if-eqz v1, :cond_0

    .line 957
    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    goto :goto_0
.end method

.method public clearPreLayout()V
    .locals 1

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    .line 1635
    iput v0, p0, Lc8/tbg;->mPreRealLeft:I

    .line 1636
    iput v0, p0, Lc8/tbg;->mPreRealWidth:I

    .line 1637
    iput v0, p0, Lc8/tbg;->mPreRealHeight:I

    .line 1638
    iput v0, p0, Lc8/tbg;->mPreRealTop:I

    .line 1639
    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "pointF"    # Landroid/graphics/PointF;

    .prologue
    .line 1651
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v0

    .line 1652
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1653
    return-void
.end method

.method protected containsEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 1660
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/tbg;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsGesture(Lc8/Weg;)Z
    .locals 2
    .param p1, "WXGestureType"    # Lc8/Weg;

    .prologue
    .line 1656
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tbg;->mGestureType:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "originalValue"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v1, 0x0

    .line 1729
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1751
    .end local p2    # "originalValue":Ljava/lang/Object;
    :goto_1
    return-object p2

    .line 1729
    .restart local p2    # "originalValue":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v2, "backgroundColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "borderRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "borderBottomLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "borderBottomRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "borderTopLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "borderTopRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "borderWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "borderTopWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "borderLeftWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "borderRightWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "borderBottomWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "borderColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "borderTopColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "borderLeftColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "borderRightColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v2, "borderBottomColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1731
    :pswitch_0
    const-string/jumbo p2, "transparent"

    goto/16 :goto_1

    .line 1737
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 1743
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 1749
    :pswitch_3
    const-string/jumbo p2, "black"

    goto/16 :goto_1

    .line 1729
    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_e
        -0x757f89aa -> :sswitch_9
        -0x57ab08a6 -> :sswitch_c
        -0x56940a43 -> :sswitch_7
        -0x4e0397d4 -> :sswitch_f
        -0x4cec9971 -> :sswitch_a
        -0x4932ce1e -> :sswitch_4
        -0xe70d730 -> :sswitch_d
        -0xd59d8cd -> :sswitch_8
        0x13dfc885 -> :sswitch_5
        0x22a57450 -> :sswitch_2
        0x230fd3d7 -> :sswitch_3
        0x2b158697 -> :sswitch_b
        0x2c2c84fa -> :sswitch_6
        0x4cb7f6d5 -> :sswitch_0
        0x506afbde -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final createView()V
    .locals 8

    .prologue
    .line 1146
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1147
    .local v0, "startNanos":J
    invoke-virtual {p0}, Lc8/tbg;->isLazy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1148
    invoke-virtual {p0}, Lc8/tbg;->createViewImpl()V

    .line 1150
    :cond_0
    iget-object v2, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lc8/lag;->uiThreadStart:J

    .line 1151
    iget-object v2, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v4, v2, Lc8/lag;->uiThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v2, Lc8/lag;->uiThreadNanos:J

    .line 1152
    return-void
.end method

.method protected createViewImpl()V
    .locals 3

    .prologue
    .line 1155
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v1, p0, Lc8/tbg;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 1156
    iget-object v1, p0, Lc8/tbg;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lc8/tbg;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    .line 1157
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->isVirtualComponent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    invoke-virtual {p0}, Lc8/tbg;->initView()V

    .line 1161
    :cond_0
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1162
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-static {}, Lc8/Jgg;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1164
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getComponentObserver()Lc8/LUf;

    move-result-object v0

    .local v0, "observer":Lc8/LUf;
    if-eqz v0, :cond_1

    .line 1165
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lc8/LUf;->onViewCreated(Lc8/tbg;Landroid/view/View;)V

    .line 1168
    .end local v0    # "observer":Lc8/LUf;
    :cond_1
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {p0, v1}, Lc8/tbg;->onHostViewInitialized(Landroid/view/View;)V

    .line 1172
    :goto_0
    return-void

    .line 1170
    :cond_2
    const-string/jumbo v1, "createViewImpl"

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 1591
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getComponentObserver()Lc8/LUf;

    move-result-object v0

    .local v0, "observer":Lc8/LUf;
    if-eqz v0, :cond_0

    .line 1592
    invoke-interface {v0, p0}, Lc8/LUf;->onPreDestory(Lc8/tbg;)V

    .line 1595
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lc8/Dgg;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1596
    new-instance v2, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v3, "[WXComponent] destroy can only be called in main thread"

    invoke-direct {v2, v3}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1598
    :cond_1
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lc8/tbg;->isLayerTypeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1599
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1601
    :cond_2
    invoke-virtual {p0}, Lc8/tbg;->removeAllEvent()V

    .line 1602
    invoke-virtual {p0}, Lc8/tbg;->removeStickyStyle()V

    .line 1605
    iget-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1606
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/nVf;->removeFixedView(Landroid/view/View;)V

    .line 1609
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    sget-object v2, Lc8/qYf;->DESTROYED:Lc8/qYf;

    iput-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    .line 1610
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/tbg;->mIsDestroyed:Z

    .line 1611
    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .locals 2

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v1, 0x0

    .line 1625
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    .line 1626
    .local v0, "original":Landroid/view/View;
    iput v1, p0, Lc8/tbg;->mPreRealLeft:I

    .line 1627
    iput v1, p0, Lc8/tbg;->mPreRealWidth:I

    .line 1628
    iput v1, p0, Lc8/tbg;->mPreRealHeight:I

    .line 1629
    iput v1, p0, Lc8/tbg;->mPreRealTop:I

    .line 1631
    return-object v0
.end method

.method protected final findComponent(Ljava/lang/String;)Lc8/tbg;
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 297
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 298
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v0

    iget-object v1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/Cag;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTypeParent(Lc8/tbg;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "component"    # Lc8/tbg;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 328
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 334
    .end local p1    # "component":Lc8/tbg;
    :goto_0
    return-object p1

    .line 331
    .restart local p1    # "component":Lc8/tbg;
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lc8/tbg;->findTypeParent(Lc8/tbg;Ljava/lang/Class;)Ljava/lang/Object;

    .line 334
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final fireEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 306
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method public final fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
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
    .line 310
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 311
    return-void
.end method

.method protected final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    if-eqz v0, :cond_1

    .line 315
    const/4 v5, 0x0

    .line 316
    .local v5, "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v5, Ljava/util/List;

    .line 319
    .restart local v5    # "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    iget-object v1, p0, Lc8/tbg;->mCurrentRef:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 321
    .end local v5    # "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public getAbsoluteX()I
    .locals 1

    .prologue
    .line 1230
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget v0, p0, Lc8/tbg;->mAbsoluteX:I

    return v0
.end method

.method public getAbsoluteY()I
    .locals 1

    .prologue
    .line 1226
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget v0, p0, Lc8/tbg;->mAbsoluteY:I

    return v0
.end method

.method public getComponentSize()Landroid/graphics/Rect;
    .locals 11

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 194
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 195
    .local v4, "size":Landroid/graphics/Rect;
    iget-object v7, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 196
    new-array v3, v10, [I

    .line 197
    .local v3, "location":[I
    new-array v0, v10, [I

    .line 198
    .local v0, "anchor":[I
    iget-object v7, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 199
    iget-object v7, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v7}, Lc8/nVf;->getContainerView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 201
    aget v7, v3, v8

    aget v8, v0, v8

    sub-int v2, v7, v8

    .line 202
    .local v2, "left":I
    aget v7, v3, v9

    iget v8, p0, Lc8/tbg;->mStickyOffset:I

    sub-int/2addr v7, v8

    aget v8, v0, v9

    sub-int v5, v7, v8

    .line 203
    .local v5, "top":I
    iget-object v7, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v7}, Lc8/qYf;->getLayoutWidth()F

    move-result v7

    float-to-int v6, v7

    .line 204
    .local v6, "width":I
    iget-object v7, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v7}, Lc8/qYf;->getLayoutHeight()F

    move-result v7

    float-to-int v1, v7

    .line 205
    .local v1, "height":I
    add-int v7, v2, v6

    add-int v8, v5, v1

    invoke-virtual {v4, v2, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    .end local v0    # "anchor":[I
    .end local v1    # "height":I
    .end local v2    # "left":I
    .end local v3    # "location":[I
    .end local v5    # "top":I
    .end local v6    # "width":I
    :cond_0
    return-object v4
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDomObject()Lc8/qYf;
    .locals 1

    .prologue
    .line 665
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    return-object v0
.end method

.method public getFirstScroller()Lc8/ebg;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1124
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    instance-of v0, p0, Lc8/ebg;

    if-eqz v0, :cond_0

    .line 1125
    check-cast p0, Lc8/ebg;

    .line 1127
    .end local p0    # "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getHostView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1213
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getInstance()Lc8/nVf;
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 2

    .prologue
    .line 631
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    .line 632
    .local v0, "h":F
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v1}, Lc8/qYf;->getLayoutHeight()F

    move-result v0

    .line 634
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 636
    :cond_0
    return v0
.end method

.method public getLayoutTopOffsetForSibling()I
    .locals 1

    .prologue
    .line 618
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutWidth()F
    .locals 2

    .prologue
    .line 622
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    .line 623
    .local v0, "w":F
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v1}, Lc8/qYf;->getLayoutWidth()F

    move-result v0

    .line 625
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 627
    :cond_0
    return v0
.end method

.method protected getOrCreateBorder()Lc8/Ieg;
    .locals 5

    .prologue
    .line 441
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Lc8/Ieg;

    invoke-direct {v0}, Lc8/Ieg;-><init>()V

    iput-object v0, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    .line 443
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Jgg;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 445
    iget-object v0, p0, Lc8/tbg;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    iget-object v1, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    invoke-static {v0, v1}, Lc8/Jgg;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 454
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    return-object v0

    .line 449
    :cond_1
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/tbg;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v1}, Lc8/Jgg;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getParent()Lc8/scg;
    .locals 1

    .prologue
    .line 1131
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mParent:Lc8/scg;

    return-object v0
.end method

.method public getParentScroller()Lc8/ebg;
    .locals 5

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v2, 0x0

    .line 1100
    move-object v0, p0

    .line 1104
    .local v0, "component":Lc8/tbg;
    :goto_0
    invoke-virtual {v0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v1

    .line 1105
    .local v1, "container":Lc8/scg;
    if-nez v1, :cond_1

    .line 1113
    :cond_0
    :goto_1
    return-object v2

    .line 1108
    :cond_1
    instance-of v3, v1, Lc8/ebg;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 1109
    check-cast v2, Lc8/ebg;

    .line 1110
    .local v2, "scroller":Lc8/ebg;
    goto :goto_1

    .line 1112
    .end local v2    # "scroller":Lc8/ebg;
    :cond_2
    invoke-virtual {v1}, Lc8/scg;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "_root"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1115
    move-object v0, v1

    goto :goto_0
.end method

.method public getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1070
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    if-nez v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    .line 1138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/tbg;->mCurrentRef:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStickyOffset()I
    .locals 1

    .prologue
    .line 1817
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget v0, p0, Lc8/tbg;->mStickyOffset:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1222
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1506
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "visible"

    goto :goto_0
.end method

.method public hasScrollParent(Lc8/tbg;)Z
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 1714
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1715
    const/4 v0, 0x1

    .line 1719
    :goto_0
    return v0

    .line 1716
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    instance-of v0, v0, Lc8/acg;

    if-eqz v0, :cond_1

    .line 1717
    const/4 v0, 0x0

    goto :goto_0

    .line 1719
    :cond_1
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/tbg;->hasScrollParent(Lc8/tbg;)Z

    move-result v0

    goto :goto_0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1194
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1179
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lc8/tbg;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lc8/tbg;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    .line 1181
    :cond_0
    return-void
.end method

.method public final invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 211
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v2, p0, Lc8/tbg;->mHolder:Lc8/rag;

    invoke-interface {v2, p1}, Lc8/rag;->getMethodInvoker(Ljava/lang/String;)Lc8/DWf;

    move-result-object v1

    .line 212
    .local v1, "invoker":Lc8/DWf;
    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getNativeInvokeHelper()Lc8/JWf;

    move-result-object v2

    invoke-virtual {v2, p0, v1, p2}, Lc8/JWf;->invoke(Ljava/lang/Object;Lc8/DWf;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WXComponent] updateProperties :class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc8/tbg;->onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_0
.end method

.method protected isConsumeTouch()Z
    .locals 1

    .prologue
    .line 1764
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc8/tbg;->mGesture:Lc8/Teg;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestoryed()Z
    .locals 1

    .prologue
    .line 1614
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lc8/tbg;->mIsDestroyed:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 1319
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lc8/tbg;->mIsDisabled:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 1307
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/PYf;->isFixed()Z

    move-result v0

    return v0
.end method

.method public isFlatUIEnabled()Z
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mParent:Lc8/scg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v0}, Lc8/scg;->isFlatUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayerTypeEnabled()Z
    .locals 1

    .prologue
    .line 1837
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->isLayerTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .prologue
    .line 342
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mParent:Lc8/scg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v0}, Lc8/scg;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRippleEnabled()Z
    .locals 4

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v1, 0x0

    .line 1964
    :try_start_0
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    const-string/jumbo v3, "rippleEnabled"

    invoke-virtual {v2, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1965
    .local v0, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1969
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 1303
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/PYf;->isSticky()Z

    move-result v0

    return v0
.end method

.method public isUsing()Z
    .locals 1

    .prologue
    .line 1680
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lc8/tbg;->isUsing:Z

    return v0
.end method

.method public isVirtualComponent()Z
    .locals 2

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x1

    .line 1704
    iget v1, p0, Lc8/tbg;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaste()Z
    .locals 1

    .prologue
    .line 1925
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lc8/tbg;->waste:Z

    return v0
.end method

.method protected measure(II)Lc8/pbg;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 672
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    new-instance v0, Lc8/pbg;

    invoke-direct {v0}, Lc8/pbg;-><init>()V

    .line 674
    .local v0, "measureOutput":Lc8/pbg;
    iget v1, p0, Lc8/tbg;->mFixedProp:I

    if-eqz v1, :cond_0

    .line 675
    iget v1, p0, Lc8/tbg;->mFixedProp:I

    iput v1, v0, Lc8/pbg;->width:I

    .line 676
    iget v1, p0, Lc8/tbg;->mFixedProp:I

    iput v1, v0, Lc8/pbg;->height:I

    .line 681
    :goto_0
    return-object v0

    .line 678
    :cond_0
    iput p1, v0, Lc8/pbg;->width:I

    .line 679
    iput p2, v0, Lc8/pbg;->height:I

    goto :goto_0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    .prologue
    .line 1664
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, "appear"

    invoke-virtual {p0, v1}, Lc8/tbg;->containsEvent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "disappear"

    invoke-virtual {p0, v1}, Lc8/tbg;->containsEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1665
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1666
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "direction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    invoke-virtual {p0, p1, v0}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1669
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public notifyNativeSizeChanged(II)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v7, 0x2

    .line 1851
    iget-boolean v5, p0, Lc8/tbg;->mNeedLayoutOnAnimation:Z

    if-nez v5, :cond_0

    .line 1874
    :goto_0
    return-void

    .line 1855
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1856
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Lc8/KYf;

    invoke-direct {v2}, Lc8/KYf;-><init>()V

    .line 1857
    .local v2, "task":Lc8/KYf;
    invoke-virtual {p0}, Lc8/tbg;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/KYf;->instanceId:Ljava/lang/String;

    .line 1858
    iget-object v5, v2, Lc8/KYf;->args:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1859
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lc8/KYf;->args:Ljava/util/List;

    .line 1862
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 1863
    .local v1, "style":Lcom/alibaba/fastjson/JSONObject;
    int-to-float v5, p1

    invoke-static {v5}, Lc8/Jgg;->getWebPxByWidth(F)F

    move-result v4

    .line 1864
    .local v4, "webW":F
    int-to-float v5, p2

    invoke-static {v5}, Lc8/Jgg;->getWebPxByWidth(F)F

    move-result v3

    .line 1866
    .local v3, "webH":F
    const-string/jumbo v5, "width"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    const-string/jumbo v5, "height"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    iget-object v5, v2, Lc8/KYf;->args:Ljava/util/List;

    invoke-virtual {p0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    iget-object v5, v2, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1871
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1872
    iput v7, v0, Landroid/os/Message;->what:I

    .line 1873
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/EYf;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public notifyWatchAppearDisappearEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    .prologue
    .line 1672
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0, p1}, Lc8/tbg;->containsEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1674
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "direction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    invoke-virtual {p0, p1, v0}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1677
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onActivityBack()Z
    .locals 1

    .prologue
    .line 1567
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .locals 0

    .prologue
    .line 1544
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 1564
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 1552
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1572
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 1556
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityStart()V
    .locals 0

    .prologue
    .line 1548
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 1560
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 276
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1574
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishLayout()V
    .locals 3

    .prologue
    .line 611
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v1}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v1}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v1

    const-string/jumbo v2, "backgroundImage"

    invoke-virtual {v1, v2}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 612
    .local v0, "param":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/tbg;->setBackgroundImage(Ljava/lang/String;)V

    .line 615
    :cond_0
    return-void

    .line 611
    .end local v0    # "param":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHostViewInitialized(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1205
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lc8/tbg;->mAnimationHolder:Lc8/Lag;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lc8/tbg;->mAnimationHolder:Lc8/Lag;

    iget-object v1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v0, v1, p0}, Lc8/Lag;->execute(Lc8/nVf;Lc8/tbg;)V

    .line 1209
    :cond_0
    invoke-direct {p0}, Lc8/tbg;->setActiveTouchListener()V

    .line 1210
    return-void
.end method

.method protected onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 234
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onRenderFinish(I)V
    .locals 11
    .param p1, "state"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v10, 0x2

    .line 1886
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1887
    iget-object v6, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    check-cast v6, Lc8/HYf;

    iget-wide v6, v6, Lc8/HYf;->mDomThreadNanos:J

    iget-object v8, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v8, v8, Lc8/lag;->domThreadNanos:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lc8/jag;->nanosToMillis(J)D

    move-result-wide v2

    .line 1888
    .local v2, "domTime":D
    iget-object v6, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v6, v6, Lc8/lag;->uiThreadNanos:J

    invoke-static {v6, v7}, Lc8/jag;->nanosToMillis(J)D

    move-result-wide v4

    .line 1889
    .local v4, "uiTime":D
    if-eq p1, v10, :cond_0

    if-nez p1, :cond_2

    .line 1890
    :cond_0
    const-string/jumbo v6, "DomExecute"

    invoke-virtual {p0}, Lc8/tbg;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget v8, v8, Lc8/lag;->rootEventId:I

    invoke-static {v6, v7, v8}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v0

    .line 1891
    .local v0, "domEvent":Lc8/kag;
    const-string/jumbo v6, "X"

    iput-object v6, v0, Lc8/kag;->ph:Ljava/lang/String;

    .line 1892
    iput-wide v2, v0, Lc8/kag;->duration:D

    .line 1893
    iget-object v6, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v6, v6, Lc8/lag;->domThreadStart:J

    iput-wide v6, v0, Lc8/kag;->ts:J

    .line 1894
    const-string/jumbo v6, "DOMThread"

    iput-object v6, v0, Lc8/kag;->tname:Ljava/lang/String;

    .line 1895
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lc8/kag;->name:Ljava/lang/String;

    .line 1896
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lc8/kag;->classname:Ljava/lang/String;

    .line 1897
    invoke-virtual {p0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1898
    invoke-virtual {p0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v6

    invoke-virtual {v6}, Lc8/scg;->getRef()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lc8/kag;->parentRef:Ljava/lang/String;

    .line 1900
    :cond_1
    invoke-virtual {v0}, Lc8/kag;->submit()V

    .line 1903
    .end local v0    # "domEvent":Lc8/kag;
    :cond_2
    if-eq p1, v10, :cond_3

    const/4 v6, 0x1

    if-ne p1, v6, :cond_5

    .line 1904
    :cond_3
    iget-object v6, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v6, v6, Lc8/lag;->uiThreadStart:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 1905
    const-string/jumbo v6, "UIExecute"

    invoke-virtual {p0}, Lc8/tbg;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget v8, v8, Lc8/lag;->rootEventId:I

    invoke-static {v6, v7, v8}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v1

    .line 1906
    .local v1, "uiEvent":Lc8/kag;
    const-string/jumbo v6, "X"

    iput-object v6, v1, Lc8/kag;->ph:Ljava/lang/String;

    .line 1907
    iput-wide v4, v1, Lc8/kag;->duration:D

    .line 1908
    iget-object v6, p0, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v6, v6, Lc8/lag;->uiThreadStart:J

    iput-wide v6, v1, Lc8/kag;->ts:J

    .line 1909
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lc8/kag;->name:Ljava/lang/String;

    .line 1910
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lc8/kag;->classname:Ljava/lang/String;

    .line 1911
    invoke-virtual {p0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1912
    invoke-virtual {p0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v6

    invoke-virtual {v6}, Lc8/scg;->getRef()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lc8/kag;->parentRef:Ljava/lang/String;

    .line 1914
    :cond_4
    invoke-virtual {v1}, Lc8/kag;->submit()V

    .line 1922
    .end local v1    # "uiEvent":Lc8/kag;
    .end local v2    # "domTime":D
    .end local v4    # "uiTime":D
    :cond_5
    :goto_0
    return-void

    .line 1916
    .restart local v2    # "domTime":D
    .restart local v4    # "uiTime":D
    :cond_6
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lc8/tbg;->isLazy()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1917
    const-string/jumbo v6, "onRenderFinish"

    const-string/jumbo v7, "createView() not called"

    invoke-static {v6, v7}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 1578
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public postAnimation(Lc8/Lag;)V
    .locals 0
    .param p1, "holder"    # Lc8/Lag;

    .prologue
    .line 164
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-object p1, p0, Lc8/tbg;->mAnimationHolder:Lc8/Lag;

    .line 165
    return-void
.end method

.method public readyToRender()V
    .locals 1

    .prologue
    .line 1688
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mParent:Lc8/scg;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->isTrackComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v0}, Lc8/scg;->readyToRender()V

    .line 1691
    :cond_0
    return-void
.end method

.method public recycled()V
    .locals 1

    .prologue
    .line 1584
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v0}, Lc8/qYf;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    :cond_0
    return-void
.end method

.method public refreshData(Lc8/tbg;)V
    .locals 0
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 438
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public registerActivityStateListener()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1536
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public final removeAllEvent()V
    .locals 4

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v3, 0x0

    .line 1264
    iget-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXEvent;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1268
    .local v0, "event":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1271
    invoke-virtual {p0, v0}, Lc8/tbg;->removeEventFromView(Ljava/lang/String;)V

    goto :goto_1

    .line 1273
    .end local v0    # "event":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lc8/tbg;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1274
    iget-object v2, p0, Lc8/tbg;->mGestureType:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1275
    iput-object v3, p0, Lc8/tbg;->mGesture:Lc8/Teg;

    .line 1276
    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lc8/Ueg;

    if-eqz v2, :cond_4

    .line 1278
    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Ueg;

    invoke-interface {v2, v3}, Lc8/Ueg;->registerGestureListener(Lc8/Teg;)V

    .line 1280
    :cond_4
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1281
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1282
    iget-object v2, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1283
    iget-object v2, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1284
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected final removeClickListener(Lc8/qbg;)V
    .locals 1
    .param p1, "l"    # Lc8/qbg;

    .prologue
    .line 405
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public final removeEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1241
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    :goto_0
    return-void

    .line 1244
    :cond_0
    iget-object v0, p0, Lc8/tbg;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1245
    iget-object v0, p0, Lc8/tbg;->mGestureType:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1246
    invoke-virtual {p0, p1}, Lc8/tbg;->removeEventFromView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1250
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, "click"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lc8/tbg;->mHostClickListeners:Ljava/util/List;

    iget-object v2, p0, Lc8/tbg;->mClickEventListener:Lc8/qbg;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1254
    :cond_0
    invoke-virtual {p0}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v0

    .line 1255
    .local v0, "scroller":Lc8/ebg;
    const-string/jumbo v1, "appear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1256
    invoke-interface {v0, p0}, Lc8/ebg;->unbindAppearEvent(Lc8/tbg;)V

    .line 1258
    :cond_1
    const-string/jumbo v1, "disappear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1259
    invoke-interface {v0, p0}, Lc8/ebg;->unbindDisappearEvent(Lc8/tbg;)V

    .line 1261
    :cond_2
    return-void
.end method

.method public final removeStickyStyle()V
    .locals 2

    .prologue
    .line 1290
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    if-nez v1, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    invoke-virtual {p0}, Lc8/tbg;->isSticky()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {p0}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v0

    .line 1296
    .local v0, "scroller":Lc8/ebg;
    if-eqz v0, :cond_0

    .line 1297
    invoke-interface {v0, p0}, Lc8/ebg;->unbindStickStyle(Lc8/tbg;)V

    goto :goto_0
.end method

.method public removeVirtualComponent()V
    .locals 0

    .prologue
    .line 1707
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method protected setAriaHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 964
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 965
    .local v0, "host":Landroid/view/View;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 966
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 968
    :cond_0
    return-void

    .line 966
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 971
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 972
    .local v0, "host":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 975
    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 5
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 1332
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1333
    invoke-static {p1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 1334
    .local v0, "colorInt":I
    invoke-virtual {p0}, Lc8/tbg;->isRippleEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 1335
    invoke-direct {p0}, Lc8/tbg;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lc8/tbg;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    .line 1336
    iget-object v2, p0, Lc8/tbg;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1337
    iget-object v2, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    if-nez v2, :cond_1

    .line 1338
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    iget-object v3, p0, Lc8/tbg;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lc8/Jgg;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1350
    .end local v0    # "colorInt":I
    :cond_0
    :goto_0
    return-void

    .line 1340
    .restart local v0    # "colorInt":I
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/tbg;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1341
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget-object v2, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-static {v2, v1}, Lc8/Jgg;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1346
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    if-eqz v2, :cond_0

    .line 1347
    :cond_3
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/Ieg;->setColor(I)V

    goto :goto_0
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgImage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1394
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/Ieg;->setImage(Landroid/graphics/Shader;)V

    .line 1400
    :goto_0
    return-void

    .line 1397
    :cond_0
    iget-object v1, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v1}, Lc8/qYf;->getLayoutWidth()F

    move-result v1

    iget-object v2, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getLayoutHeight()F

    move-result v2

    invoke-static {p1, v1, v2}, Lc8/Bgg;->getShader(Ljava/lang/String;FF)Landroid/graphics/Shader;

    move-result-object v0

    .line 1398
    .local v0, "shader":Landroid/graphics/Shader;
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ieg;->setImage(Landroid/graphics/Shader;)V

    goto :goto_0
.end method

.method public setBorderColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderColor"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1478
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1479
    invoke-static {p2}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 1480
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1481
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1500
    .end local v0    # "colorInt":I
    :cond_1
    :goto_1
    return-void

    .line 1481
    .restart local v0    # "colorInt":I
    :sswitch_0
    const-string/jumbo v6, "borderColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "borderTopColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "borderRightColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "borderBottomColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "borderLeftColor"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 1483
    :pswitch_0
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lc8/Ieg;->setBorderColor(II)V

    goto :goto_1

    .line 1486
    :pswitch_1
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lc8/Ieg;->setBorderColor(II)V

    goto :goto_1

    .line 1489
    :pswitch_2
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lc8/Ieg;->setBorderColor(II)V

    goto :goto_1

    .line 1492
    :pswitch_3
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lc8/Ieg;->setBorderColor(II)V

    goto :goto_1

    .line 1495
    :pswitch_4
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lc8/Ieg;->setBorderColor(II)V

    goto :goto_1

    .line 1481
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_2
        -0x57ab08a6 -> :sswitch_1
        -0x4e0397d4 -> :sswitch_3
        -0xe70d730 -> :sswitch_4
        0x2b158697 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBorderRadius(Ljava/lang/String;F)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderRadius"    # F

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1412
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 1413
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1431
    :cond_1
    :goto_1
    return-void

    .line 1413
    :sswitch_0
    const-string/jumbo v5, "borderRadius"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "borderTopLeftRadius"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "borderTopRightRadius"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "borderBottomRightRadius"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "borderBottomLeftRadius"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1415
    :pswitch_0
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc8/Ieg;->setBorderRadius(IF)V

    goto :goto_1

    .line 1418
    :pswitch_1
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    iget-object v2, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc8/Ieg;->setBorderRadius(IF)V

    goto :goto_1

    .line 1421
    :pswitch_2
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    iget-object v1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p2, v1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lc8/Ieg;->setBorderRadius(IF)V

    goto :goto_1

    .line 1424
    :pswitch_3
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    iget-object v1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p2, v1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lc8/Ieg;->setBorderRadius(IF)V

    goto/16 :goto_1

    .line 1427
    :pswitch_4
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    iget-object v1, p0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p2, v1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lc8/Ieg;->setBorderRadius(IF)V

    goto/16 :goto_1

    .line 1413
    :sswitch_data_0
    .sparse-switch
        -0x4932ce1e -> :sswitch_1
        0x13dfc885 -> :sswitch_2
        0x22a57450 -> :sswitch_4
        0x230fd3d7 -> :sswitch_3
        0x506afbde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderStyle"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1456
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1457
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1475
    :cond_1
    :goto_1
    return-void

    .line 1457
    :sswitch_0
    const-string/jumbo v5, "borderStyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "borderRightStyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "borderBottomStyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "borderLeftStyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "borderTopStyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1459
    :pswitch_0
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Lc8/Ieg;->setBorderStyle(ILjava/lang/String;)V

    goto :goto_1

    .line 1462
    :pswitch_1
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Lc8/Ieg;->setBorderStyle(ILjava/lang/String;)V

    goto :goto_1

    .line 1465
    :pswitch_2
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Lc8/Ieg;->setBorderStyle(ILjava/lang/String;)V

    goto :goto_1

    .line 1468
    :pswitch_3
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lc8/Ieg;->setBorderStyle(ILjava/lang/String;)V

    goto :goto_1

    .line 1471
    :pswitch_4
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lc8/Ieg;->setBorderStyle(ILjava/lang/String;)V

    goto :goto_1

    .line 1457
    nop

    :sswitch_data_0
    .sparse-switch
        -0x75b299bf -> :sswitch_1
        -0x56c71a58 -> :sswitch_4
        -0x4d1fa986 -> :sswitch_2
        -0xd8ce8e2 -> :sswitch_3
        0x2bf974e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBorderWidth(Ljava/lang/String;F)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderWidth"    # F

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1434
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 1435
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1453
    :cond_1
    :goto_1
    return-void

    .line 1435
    :sswitch_0
    const-string/jumbo v5, "borderWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "borderTopWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "borderRightWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "borderBottomWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "borderLeftWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1437
    :pswitch_0
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc8/Ieg;->setBorderWidth(IF)V

    goto :goto_1

    .line 1440
    :pswitch_1
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p2, v1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lc8/Ieg;->setBorderWidth(IF)V

    goto :goto_1

    .line 1443
    :pswitch_2
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p2, v1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lc8/Ieg;->setBorderWidth(IF)V

    goto/16 :goto_1

    .line 1446
    :pswitch_3
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p2, v1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lc8/Ieg;->setBorderWidth(IF)V

    goto/16 :goto_1

    .line 1449
    :pswitch_4
    invoke-virtual {p0}, Lc8/tbg;->getOrCreateBorder()Lc8/Ieg;

    move-result-object v0

    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc8/Ieg;->setBorderWidth(IF)V

    goto/16 :goto_1

    .line 1435
    nop

    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_2
        -0x56940a43 -> :sswitch_1
        -0x4cec9971 -> :sswitch_3
        -0xd59d8cd -> :sswitch_4
        0x2c2c84fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    .prologue
    .line 1311
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-boolean p1, p0, Lc8/tbg;->mIsDisabled:Z

    .line 1312
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1316
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-object v1, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 15
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    iget-object v4, p0, Lc8/tbg;->mParent:Lc8/scg;

    if-nez v4, :cond_1

    .line 580
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v14, "params":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 582
    move-object v13, v14

    .line 586
    .end local v14    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .local v13, "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    if-eqz v13, :cond_0

    .line 587
    iget-object v4, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    :cond_0
    return-void

    .line 584
    .end local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v4, p0, Lc8/tbg;->mParent:Lc8/scg;

    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v4 .. v12}, Lc8/scg;->getChildLayoutParams(Lc8/tbg;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .restart local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method public final setLayout(Lc8/qYf;)V
    .locals 17
    .param p1, "domObject"    # Lc8/qYf;

    .prologue
    .line 461
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mCurrentRef:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mParent:Lc8/scg;

    if-nez v2, :cond_4

    const/4 v12, 0x1

    .line 466
    .local v12, "nullParent":Z
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/tbg;->mDomObj:Lc8/qYf;

    .line 469
    if-eqz v12, :cond_5

    const/4 v15, 0x0

    .line 471
    .local v15, "siblingOffset":I
    :goto_2
    if-eqz v12, :cond_6

    new-instance v14, Lc8/IZf;

    invoke-direct {v14}, Lc8/IZf;-><init>()V

    .line 472
    .local v14, "parentPadding":Lc8/IZf;
    :goto_3
    if-eqz v12, :cond_7

    new-instance v13, Lc8/IZf;

    invoke-direct {v13}, Lc8/IZf;-><init>()V

    .line 473
    .local v13, "parentBorder":Lc8/IZf;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getMargin()Lc8/IZf;

    move-result-object v10

    .line 474
    .local v10, "margin":Lc8/IZf;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getLayoutWidth()F

    move-result v2

    float-to-int v3, v2

    .line 475
    .local v3, "realWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getLayoutHeight()F

    move-result v2

    float-to-int v4, v2

    .line 476
    .local v4, "realHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getLayoutX()F

    move-result v2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lc8/IZf;->get(I)F

    move-result v16

    sub-float v2, v2, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lc8/IZf;->get(I)F

    move-result v16

    sub-float v2, v2, v16

    float-to-int v5, v2

    .line 478
    .local v5, "realLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getLayoutY()F

    move-result v2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lc8/IZf;->get(I)F

    move-result v16

    sub-float v2, v2, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lc8/IZf;->get(I)F

    move-result v16

    sub-float v2, v2, v16

    float-to-int v2, v2

    add-int v6, v2, v15

    .line 480
    .local v6, "realTop":I
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Lc8/IZf;->get(I)F

    move-result v2

    float-to-int v7, v2

    .line 481
    .local v7, "realRight":I
    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Lc8/IZf;->get(I)F

    move-result v2

    float-to-int v8, v2

    .line 482
    .local v8, "realBottom":I
    new-instance v9, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    invoke-interface {v2}, Lc8/qYf;->getCSSLayoutLeft()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lc8/qYf;->getCSSLayoutTop()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v9, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 486
    .local v9, "rawOffset":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lc8/tbg;->mPreRealWidth:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lc8/tbg;->mPreRealHeight:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lc8/tbg;->mPreRealLeft:I

    if-ne v2, v5, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lc8/tbg;->mPreRealTop:I

    if-eq v2, v6, :cond_0

    .line 490
    :cond_2
    if-eqz v12, :cond_8

    const/4 v2, 0x0

    :goto_5
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lc8/tbg;->mAbsoluteY:I

    .line 491
    if-eqz v12, :cond_9

    const/4 v2, 0x0

    :goto_6
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lc8/tbg;->mAbsoluteX:I

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mInstance:Lc8/nVf;

    iget-boolean v2, v2, Lc8/nVf;->mEnd:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mHost:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lc8/tbg;->mAbsoluteY:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tbg;->mInstance:Lc8/nVf;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lc8/nVf;->getWeexHeight()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-le v2, v0, :cond_3

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->firstScreenRenderFinished()V

    .line 499
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lc8/tbg;->measure(II)Lc8/pbg;

    move-result-object v11

    .line 500
    .local v11, "measureOutput":Lc8/pbg;
    iget v3, v11, Lc8/pbg;->width:I

    .line 501
    iget v4, v11, Lc8/pbg;->height:I

    move-object/from16 v2, p0

    .line 503
    invoke-direct/range {v2 .. v9}, Lc8/tbg;->setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V

    goto/16 :goto_0

    .line 465
    .end local v3    # "realWidth":I
    .end local v4    # "realHeight":I
    .end local v5    # "realLeft":I
    .end local v6    # "realTop":I
    .end local v7    # "realRight":I
    .end local v8    # "realBottom":I
    .end local v9    # "rawOffset":Landroid/graphics/Point;
    .end local v10    # "margin":Lc8/IZf;
    .end local v11    # "measureOutput":Lc8/pbg;
    .end local v12    # "nullParent":Z
    .end local v13    # "parentBorder":Lc8/IZf;
    .end local v14    # "parentPadding":Lc8/IZf;
    .end local v15    # "siblingOffset":I
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 469
    .restart local v12    # "nullParent":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v2}, Lc8/scg;->getChildrenLayoutTopOffset()I

    move-result v15

    goto/16 :goto_2

    .line 471
    .restart local v15    # "siblingOffset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v2}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getPadding()Lc8/IZf;

    move-result-object v14

    goto/16 :goto_3

    .line 472
    .restart local v14    # "parentPadding":Lc8/IZf;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v2}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getBorder()Lc8/IZf;

    move-result-object v13

    goto/16 :goto_4

    .line 490
    .restart local v3    # "realWidth":I
    .restart local v4    # "realHeight":I
    .restart local v5    # "realLeft":I
    .restart local v6    # "realTop":I
    .restart local v7    # "realRight":I
    .restart local v8    # "realBottom":I
    .restart local v9    # "rawOffset":Landroid/graphics/Point;
    .restart local v10    # "margin":Lc8/IZf;
    .restart local v13    # "parentBorder":Lc8/IZf;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v2}, Lc8/scg;->getAbsoluteY()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lc8/qYf;->getLayoutY()F

    move-result v16

    add-float v2, v2, v16

    goto/16 :goto_5

    .line 491
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tbg;->mParent:Lc8/scg;

    invoke-virtual {v2}, Lc8/scg;->getAbsoluteX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tbg;->mDomObj:Lc8/qYf;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lc8/qYf;->getLayoutX()F

    move-result v16

    add-float v2, v2, v16

    goto/16 :goto_6
.end method

.method public setNeedLayoutOnAnimation(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 1844
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-boolean p1, p0, Lc8/tbg;->mNeedLayoutOnAnimation:Z

    .line 1845
    return-void
.end method

.method public setOpacity(F)V
    .locals 3
    .param p1, "opacity"    # F

    .prologue
    .line 1403
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {p0}, Lc8/tbg;->isLayerTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1407
    :cond_0
    iget-object v0, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1409
    :cond_1
    return-void
.end method

.method public setPadding(Lc8/IZf;Lc8/IZf;)V
    .locals 9
    .param p1, "padding"    # Lc8/IZf;
    .param p2, "border"    # Lc8/IZf;

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 640
    invoke-virtual {p1, v5}, Lc8/IZf;->get(I)F

    move-result v4

    invoke-virtual {p2, v5}, Lc8/IZf;->get(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 641
    .local v1, "left":I
    invoke-virtual {p1, v6}, Lc8/IZf;->get(I)F

    move-result v4

    invoke-virtual {p2, v6}, Lc8/IZf;->get(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 642
    .local v3, "top":I
    invoke-virtual {p1, v7}, Lc8/IZf;->get(I)F

    move-result v4

    invoke-virtual {p2, v7}, Lc8/IZf;->get(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 643
    .local v2, "right":I
    invoke-virtual {p1, v8}, Lc8/IZf;->get(I)F

    move-result v4

    invoke-virtual {p2, v8}, Lc8/IZf;->get(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 645
    .local v0, "bottom":I
    instance-of v4, p0, Lc8/Fdg;

    if-eqz v4, :cond_1

    move-object v4, p0

    check-cast v4, Lc8/Fdg;

    invoke-interface {v4, v6}, Lc8/Fdg;->promoteToView(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 646
    check-cast p0, Lc8/Fdg;

    .end local p0    # "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-interface {p0}, Lc8/Fdg;->getOrCreateFlatWidget()Lc8/Ldg;

    move-result-object v4

    invoke-interface {v4, v1, v3, v2, v0}, Lc8/Ldg;->setContentBox(IIII)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 647
    .restart local p0    # "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :cond_1
    iget-object v4, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 648
    iget-object v4, p0, Lc8/tbg;->mHost:Landroid/view/View;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 19
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 735
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/16 v17, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v17, :pswitch_data_0

    .line 863
    const/16 v17, 0x0

    :goto_1
    return v17

    .line 735
    :sswitch_0
    const-string/jumbo v18, "preventMoveEvent"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v18, "disabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v18, "position"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v18, "backgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v18, "backgroundImage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v18, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v18, "borderRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v18, "borderTopLeftRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v18, "borderTopRightRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v18, "borderBottomRightRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v18, "borderBottomLeftRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v18, "borderWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v18, "borderTopWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v18, "borderRightWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v18, "borderBottomWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v18, "borderLeftWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v18, "borderStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v18, "borderRightStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v18, "borderBottomStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v18, "borderLeftStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v18, "borderTopStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v18, "borderColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v18, "borderTopColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v18, "borderRightColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v18, "borderBottomColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v18, "borderLeftColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v18, "visibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v18, "elevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v18, "fixedSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v18, "ariaLabel"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v18, "ariaHidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v18, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v18, "minWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v18, "maxWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v18, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v18, "minHeight"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v18, "maxHeight"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v18, "alignItems"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v18, "alignSelf"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v18, "flex"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v18, "flexDirection"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v18, "justifyContent"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v18, "flexWrap"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v18, "margin"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v18, "marginTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v18, "marginLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v18, "marginRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v18, "marginBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v18, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v18, "paddingTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v18, "paddingLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v18, "paddingRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v18, "paddingBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v18, "left"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v18, "top"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v18, "right"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v18, "bottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v18, "boxShadow"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x39

    goto/16 :goto_0

    .line 737
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tbg;->mGesture:Lc8/Teg;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tbg;->mGesture:Lc8/Teg;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lc8/Teg;->setPreventMoveEvent(Z)V

    .line 740
    :cond_1
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 742
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    .line 743
    .local v7, "disabled":Ljava/lang/Boolean;
    if-eqz v7, :cond_2

    .line 744
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/tbg;->setDisabled(Z)V

    .line 745
    const-string/jumbo v17, ":disabled"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lc8/tbg;->setPseudoClassStatus(Ljava/lang/String;Z)V

    .line 747
    :cond_2
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 749
    .end local v7    # "disabled":Ljava/lang/Boolean;
    :pswitch_2
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 750
    .local v12, "position":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 751
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lc8/tbg;->setSticky(Ljava/lang/String;)V

    .line 752
    :cond_3
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 754
    .end local v12    # "position":Ljava/lang/String;
    :pswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "bgColor":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 756
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/tbg;->setBackgroundColor(Ljava/lang/String;)V

    .line 757
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 759
    .end local v3    # "bgColor":Ljava/lang/String;
    :pswitch_4
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    .local v4, "bgImage":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 761
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/tbg;->setBackgroundImage(Ljava/lang/String;)V

    .line 763
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 765
    .end local v4    # "bgImage":Ljava/lang/String;
    :pswitch_5
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v11

    .line 766
    .local v11, "opacity":Ljava/lang/Float;
    if-eqz v11, :cond_6

    .line 767
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/tbg;->setOpacity(F)V

    .line 768
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 774
    .end local v11    # "opacity":Ljava/lang/Float;
    :pswitch_6
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v13

    .line 775
    .local v13, "radius":Ljava/lang/Float;
    if-eqz v13, :cond_7

    .line 776
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lc8/tbg;->setBorderRadius(Ljava/lang/String;F)V

    .line 778
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 784
    .end local v13    # "radius":Ljava/lang/Float;
    :pswitch_7
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v16

    .line 785
    .local v16, "width":Ljava/lang/Float;
    if-eqz v16, :cond_8

    .line 786
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lc8/tbg;->setBorderWidth(Ljava/lang/String;F)V

    .line 787
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 793
    .end local v16    # "width":Ljava/lang/Float;
    :pswitch_8
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 794
    .local v6, "border_style":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 795
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lc8/tbg;->setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 802
    .end local v6    # "border_style":Ljava/lang/String;
    :pswitch_9
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, "border_color":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lc8/tbg;->setBorderColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 807
    .end local v5    # "border_color":Ljava/lang/String;
    :pswitch_a
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 808
    .local v15, "visibility":Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 809
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/tbg;->setVisibility(Ljava/lang/String;)V

    .line 810
    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 812
    .end local v15    # "visibility":Ljava/lang/String;
    :pswitch_b
    if-eqz p2, :cond_c

    .line 813
    invoke-direct/range {p0 .. p0}, Lc8/tbg;->updateElevation()V

    .line 815
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 817
    :pswitch_c
    const-string/jumbo v17, "m"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 818
    .local v8, "fixedSize":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lc8/tbg;->setFixedSize(Ljava/lang/String;)V

    .line 819
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 821
    .end local v8    # "fixedSize":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v17, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 822
    .local v10, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/tbg;->setAriaLabel(Ljava/lang/String;)V

    .line 823
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 825
    .end local v10    # "label":Ljava/lang/String;
    :pswitch_e
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 826
    .local v9, "isHidden":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lc8/tbg;->setAriaHidden(Z)V

    .line 827
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 854
    .end local v9    # "isHidden":Z
    :pswitch_f
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 857
    :pswitch_10
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->updateBoxShadow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 858
    :catch_0
    move-exception v14

    .line 859
    .local v14, "t":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 735
    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_17
        -0x75b299bf -> :sswitch_11
        -0x757f89aa -> :sswitch_d
        -0x597a2048 -> :sswitch_32
        -0x57ab08a6 -> :sswitch_16
        -0x56c71a58 -> :sswitch_14
        -0x56940a43 -> :sswitch_c
        -0x527265d5 -> :sswitch_38
        -0x5201456c -> :sswitch_20
        -0x4e0397d4 -> :sswitch_18
        -0x4d1fa986 -> :sswitch_12
        -0x4cec9971 -> :sswitch_e
        -0x4b8807f5 -> :sswitch_5
        -0x4932ce1e -> :sswitch_7
        -0x48c76ed9 -> :sswitch_22
        -0x42474fed -> :sswitch_1e
        -0x40737a52 -> :sswitch_2b
        -0x3f600445 -> :sswitch_25
        -0x3e464339 -> :sswitch_2c
        -0x3a1ff07a -> :sswitch_28
        -0x36017855 -> :sswitch_24
        -0x337b0495 -> :sswitch_1d
        -0x300fc3ef -> :sswitch_30
        -0x113c6e87 -> :sswitch_2f
        -0xe70d730 -> :sswitch_19
        -0xd8ce8e2 -> :sswitch_13
        -0xd59d8cd -> :sswitch_f
        -0x7f661e7 -> :sswitch_23
        -0x42d1a3 -> :sswitch_1b
        0x1c155 -> :sswitch_36
        0x2ffff9 -> :sswitch_27
        0x32a007 -> :sswitch_35
        0x55f4784 -> :sswitch_31
        0x677c21c -> :sswitch_37
        0x6be2dc6 -> :sswitch_1f
        0xc0fb19c -> :sswitch_34
        0x10263a7c -> :sswitch_1
        0x13dfc885 -> :sswitch_8
        0x17dd56c2 -> :sswitch_21
        0x22a57450 -> :sswitch_a
        0x230fd3d7 -> :sswitch_9
        0x2a8c788b -> :sswitch_33
        0x2ac25e51 -> :sswitch_0
        0x2b158697 -> :sswitch_15
        0x2bf974e5 -> :sswitch_10
        0x2c2c84fa -> :sswitch_b
        0x2c4a1ecb -> :sswitch_39
        0x2c8d6195 -> :sswitch_1c
        0x2c929929 -> :sswitch_2
        0x3a1ea90e -> :sswitch_2e
        0x4cb7f6d5 -> :sswitch_3
        0x4d0b70cd -> :sswitch_4
        0x506afbde -> :sswitch_6
        0x67f69fe3 -> :sswitch_2a
        0x6953cff1 -> :sswitch_26
        0x6ee75fc9 -> :sswitch_29
        0x73b66312 -> :sswitch_1a
        0x757a12d5 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected setPseudoClassStatus(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "clzName"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 1778
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v2

    .line 1779
    .local v2, "styles":Lc8/PYf;
    invoke-virtual {v2}, Lc8/PYf;->getPesudoStyles()Ljava/util/Map;

    move-result-object v0

    .line 1781
    .local v0, "pesudoStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1784
    :cond_1
    iget-object v3, p0, Lc8/tbg;->mPesudoStatus:Lc8/Ddg;

    invoke-virtual {v2}, Lc8/PYf;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v0, v4}, Lc8/Ddg;->updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1790
    .local v1, "resultStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lc8/tbg;->isRippleEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1791
    const-string/jumbo v3, "backgroundColor"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1793
    const-string/jumbo v3, "PseudoClass"

    const-string/jumbo v4, "skip empty pseudo styles"

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1798
    :cond_2
    invoke-direct {p0, v1}, Lc8/tbg;->updateStyleByPesudo(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setSticky(Ljava/lang/String;)V
    .locals 2
    .param p1, "sticky"    # Ljava/lang/String;

    .prologue
    .line 1323
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sticky"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    invoke-virtual {p0}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v0

    .line 1325
    .local v0, "waScroller":Lc8/ebg;
    if-eqz v0, :cond_0

    .line 1326
    invoke-interface {v0, p0}, Lc8/ebg;->bindStickStyle(Lc8/tbg;)V

    .line 1329
    .end local v0    # "waScroller":Lc8/ebg;
    :cond_0
    return-void
.end method

.method public setStickyOffset(I)V
    .locals 0
    .param p1, "stickyOffset"    # I

    .prologue
    .line 1829
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput p1, p0, Lc8/tbg;->mStickyOffset:I

    .line 1830
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1710
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput p1, p0, Lc8/tbg;->mType:I

    .line 1711
    return-void
.end method

.method public setUsing(Z)V
    .locals 0
    .param p1, "using"    # Z

    .prologue
    .line 1684
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-boolean p1, p0, Lc8/tbg;->isUsing:Z

    .line 1685
    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 2
    .param p1, "visibility"    # Ljava/lang/String;

    .prologue
    .line 1514
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1515
    const-string/jumbo v1, "visible"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1516
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    const-string/jumbo v1, "hidden"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWaste(Z)V
    .locals 7
    .param p1, "waste"    # Z

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1929
    iget-boolean v1, p0, Lc8/tbg;->waste:Z

    if-eq v1, p1, :cond_0

    .line 1930
    iput-boolean p1, p0, Lc8/tbg;->waste:Z

    .line 1931
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    check-cast v0, Lc8/HYf;

    .line 1932
    .local v0, "domObject":Lc8/HYf;
    if-eqz p1, :cond_3

    .line 1933
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    const-string/jumbo v3, "hidden"

    invoke-virtual {v1, v2, v3}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    invoke-virtual {v0}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/xYf;->getStatement()Lc8/xZf;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1935
    invoke-virtual {v0, v4}, Lc8/HYf;->setVisible(Z)V

    .line 1936
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1937
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1960
    .end local v0    # "domObject":Lc8/HYf;
    :cond_0
    :goto_0
    return-void

    .line 1941
    .restart local v0    # "domObject":Lc8/HYf;
    :cond_1
    const-string/jumbo v1, "visible"

    invoke-virtual {v0}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    const-string/jumbo v3, "ifFalse"

    invoke-virtual {v2, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1942
    invoke-virtual {v0, v5}, Lc8/HYf;->setVisible(Z)V

    .line 1943
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1944
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1947
    :cond_2
    invoke-virtual {v0, v4}, Lc8/HYf;->setVisible(Z)V

    .line 1948
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1949
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1953
    :cond_3
    invoke-virtual {v0, v5}, Lc8/HYf;->setVisible(Z)V

    .line 1954
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1955
    invoke-virtual {p0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1957
    :cond_4
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    const-string/jumbo v3, "visible"

    invoke-virtual {v1, v2, v3}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateActivePseudo(Z)V
    .locals 1
    .param p1, "isSet"    # Z

    .prologue
    .line 1769
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v0, ":active"

    invoke-virtual {p0, v0, p1}, Lc8/tbg;->setPseudoClassStatus(Ljava/lang/String;Z)V

    .line 1770
    return-void
.end method

.method public updateAttrs(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 430
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    .line 431
    .local v0, "domObject":Lc8/qYf;
    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/tbg;->updateProperties(Ljava/util/Map;)V

    .line 434
    :cond_0
    return-void
.end method

.method protected updateBoxShadow()V
    .locals 18

    .prologue
    .line 868
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Lc8/Sfg;->isBoxShadowEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 869
    const-string/jumbo v15, "BoxShadow"

    const-string/jumbo v16, "box-shadow disabled"

    invoke-static/range {v15 .. v16}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v15

    invoke-interface {v15}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 874
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v15

    invoke-interface {v15}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v15

    const-string/jumbo v16, "boxShadow"

    invoke-virtual/range {v15 .. v16}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 875
    .local v2, "boxShadow":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v15

    invoke-interface {v15}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v15

    const-string/jumbo v16, "shadowQuality"

    invoke-virtual/range {v15 .. v16}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 876
    .local v8, "shadowQuality":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/tbg;->mHost:Landroid/view/View;

    .line 881
    .local v10, "target":Landroid/view/View;
    move-object/from16 v0, p0

    instance-of v15, v0, Lc8/scg;

    if-eqz v15, :cond_2

    move-object/from16 v15, p0

    .line 882
    check-cast v15, Lc8/scg;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lc8/scg;->getBoxShadowHost(Z)Landroid/view/View;

    move-result-object v10

    .line 885
    :cond_2
    if-eqz v10, :cond_0

    .line 889
    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v8, v15}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 890
    .local v5, "quality":F
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v15

    invoke-virtual {v15}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v14

    .line 891
    .local v14, "viewPort":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v16, " / ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lc8/PYf;->getWidth(I)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lc8/PYf;->getHeight(I)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] / "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 896
    .local v12, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/tbg;->mLastBoxShadowId:Ljava/lang/String;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/tbg;->mLastBoxShadowId:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 897
    const-string/jumbo v15, "BoxShadow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "box-shadow style was not modified. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    :cond_3
    const/16 v15, 0x8

    new-array v6, v15, [F

    fill-array-data v6, :array_0

    .line 902
    .local v6, "radii":[F
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v15

    invoke-interface {v15}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v9

    .line 903
    .local v9, "style":Lc8/PYf;
    if-eqz v9, :cond_4

    .line 904
    const-string/jumbo v15, "borderTopLeftRadius"

    invoke-virtual {v9, v15}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 905
    .local v11, "tl":F
    const/4 v15, 0x0

    aput v11, v6, v15

    .line 906
    const/4 v15, 0x1

    aput v11, v6, v15

    .line 908
    const-string/jumbo v15, "borderTopRightRadius"

    invoke-virtual {v9, v15}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 909
    .local v13, "tr":F
    const/4 v15, 0x2

    aput v13, v6, v15

    .line 910
    const/4 v15, 0x3

    aput v13, v6, v15

    .line 912
    const-string/jumbo v15, "borderBottomRightRadius"

    invoke-virtual {v9, v15}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 913
    .local v3, "br":F
    const/4 v15, 0x4

    aput v3, v6, v15

    .line 914
    const/4 v15, 0x5

    aput v3, v6, v15

    .line 916
    const-string/jumbo v15, "borderBottomLeftRadius"

    invoke-virtual {v9, v15}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 917
    .local v1, "bl":F
    const/4 v15, 0x6

    aput v1, v6, v15

    .line 918
    const/4 v15, 0x7

    aput v1, v6, v15

    .line 920
    const-string/jumbo v15, "borderRadius"

    invoke-virtual {v9, v15}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 921
    const-string/jumbo v15, "borderRadius"

    invoke-virtual {v9, v15}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 922
    .local v7, "radius":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v15, v6

    if-ge v4, v15, :cond_4

    .line 923
    aput v7, v6, v4

    .line 922
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 928
    .end local v1    # "bl":F
    .end local v3    # "br":F
    .end local v4    # "i":I
    .end local v7    # "radius":F
    .end local v11    # "tl":F
    .end local v13    # "tr":F
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15, v6, v14, v5}, Lc8/Sfg;->setBoxShadow(Landroid/view/View;Ljava/lang/String;[FIF)V

    .line 929
    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/tbg;->mLastBoxShadowId:Ljava/lang/String;

    goto/16 :goto_0

    .line 931
    .end local v2    # "boxShadow":Ljava/lang/Object;
    .end local v5    # "quality":F
    .end local v6    # "radii":[F
    .end local v8    # "shadowQuality":Ljava/lang/Object;
    .end local v9    # "style":Lc8/PYf;
    .end local v10    # "target":Landroid/view/View;
    .end local v12    # "token":Ljava/lang/String;
    .end local v14    # "viewPort":I
    :cond_5
    const-string/jumbo v15, "Can not resolve styles"

    invoke-static {v15}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public updateDom(Lc8/HYf;)V
    .locals 1
    .param p1, "dom"    # Lc8/HYf;

    .prologue
    .line 1234
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-nez p1, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1237
    :cond_0
    invoke-virtual {p1}, Lc8/HYf;->clone()Lc8/HYf;

    move-result-object v0

    iput-object v0, p0, Lc8/tbg;->mDomObj:Lc8/qYf;

    goto :goto_0
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 662
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x1

    .line 687
    if-eqz p1, :cond_0

    iget-object v9, p0, Lc8/tbg;->mHost:Landroid/view/View;

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lc8/tbg;->isVirtualComponent()Z

    move-result v9

    if-nez v9, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 692
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 693
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 694
    .local v6, "param":Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {v6, v9}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 695
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 696
    invoke-virtual {p0, v5, v8}, Lc8/tbg;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 698
    :cond_3
    invoke-virtual {p0, v5, v6}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 699
    iget-object v9, p0, Lc8/tbg;->mHolder:Lc8/rag;

    if-eqz v9, :cond_0

    .line 702
    iget-object v9, p0, Lc8/tbg;->mHolder:Lc8/rag;

    invoke-interface {v9, v5}, Lc8/rag;->getPropertyInvoker(Ljava/lang/String;)Lc8/DWf;

    move-result-object v4

    .line 703
    .local v4, "invoker":Lc8/DWf;
    if-eqz v4, :cond_2

    .line 705
    :try_start_0
    invoke-interface {v4}, Lc8/DWf;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 706
    .local v7, "paramClazzs":[Ljava/lang/reflect/Type;
    array-length v9, v7

    if-eq v9, v11, :cond_4

    .line 707
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[WXComponent] setX method only one parameter\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    .end local v7    # "paramClazzs":[Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[WXComponent] updateProperties :class:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " function "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 710
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "paramClazzs":[Ljava/lang/reflect/Type;
    :cond_4
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v7, v9

    invoke-static {v9, v6}, Lc8/ygg;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 711
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-interface {v4, p0, v9}, Lc8/DWf;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 718
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "invoker":Lc8/DWf;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "param":Ljava/lang/Object;
    .end local v7    # "paramClazzs":[Ljava/lang/reflect/Type;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lc8/tbg;->readyToRender()V

    .line 719
    instance-of v9, p0, Lc8/Fdg;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    if-eqz v9, :cond_0

    move-object v2, p0

    .line 720
    check-cast v2, Lc8/Fdg;

    .line 721
    .local v2, "flatComponent":Lc8/Fdg;
    invoke-interface {v2, v11}, Lc8/Fdg;->promoteToView(Z)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v2}, Lc8/Fdg;->getOrCreateFlatWidget()Lc8/Ldg;

    move-result-object v9

    instance-of v9, v9, Lc8/Idg;

    if-nez v9, :cond_0

    .line 723
    invoke-interface {v2}, Lc8/Fdg;->getOrCreateFlatWidget()Lc8/Ldg;

    move-result-object v9

    iget-object v10, p0, Lc8/tbg;->mBackgroundDrawable:Lc8/Ieg;

    invoke-interface {v9, v10}, Lc8/Ldg;->setBackgroundAndBorder(Lc8/Ieg;)V

    goto/16 :goto_0
.end method

.method public updateStyle(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 423
    .local p0, "this":Lc8/tbg;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    .line 424
    .local v0, "domObject":Lc8/qYf;
    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/tbg;->updateProperties(Ljava/util/Map;)V

    .line 427
    :cond_0
    return-void
.end method
