.class public Lc8/YXf;
.super Ljava/lang/Object;
.source "BasicEditTextDomObject.java"

# interfaces
.implements Lc8/BZf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZXf;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZXf;


# direct methods
.method constructor <init>(Lc8/ZXf;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lc8/YXf;->this$0:Lc8/ZXf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lc8/CZf;FLc8/HZf;)V
    .locals 1
    .param p1, "node"    # Lc8/CZf;
    .param p2, "width"    # F
    .param p3, "measureOutput"    # Lc8/HZf;

    .prologue
    .line 49
    invoke-static {p2}, Lc8/yZf;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p1, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget p2, v0, Lc8/DZf;->maxWidth:F

    .line 52
    :cond_0
    iget-object v0, p0, Lc8/YXf;->this$0:Lc8/ZXf;

    invoke-virtual {v0}, Lc8/ZXf;->getMeasureHeight()F

    move-result v0

    iput v0, p3, Lc8/HZf;->height:F

    .line 53
    iput p2, p3, Lc8/HZf;->width:F

    .line 54
    return-void
.end method
