.class public interface abstract Lc8/qYf;
.super Ljava/lang/Object;
.source "ImmutableDomObject.java"


# static fields
.field public static final DESTROYED:Lc8/qYf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lc8/HYf;->DESTROYED:Lc8/HYf;

    sput-object v0, Lc8/qYf;->DESTROYED:Lc8/qYf;

    return-void
.end method


# virtual methods
.method public abstract getAttrs()Lc8/xYf;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getBorder()Lc8/IZf;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCSSLayoutBottom()F
.end method

.method public abstract getCSSLayoutLeft()F
.end method

.method public abstract getCSSLayoutRight()F
.end method

.method public abstract getCSSLayoutTop()F
.end method

.method public abstract getEvents()Lcom/taobao/weex/dom/WXEvent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getExtra()Ljava/lang/Object;
.end method

.method public abstract getLayoutHeight()F
.end method

.method public abstract getLayoutWidth()F
.end method

.method public abstract getLayoutX()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLayoutY()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMargin()Lc8/IZf;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPadding()Lc8/IZf;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getStyles()Lc8/PYf;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isFixed()Z
.end method
