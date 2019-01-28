.class public Lc8/pfb;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lc8/bdb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rfb;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rfb;

.field final synthetic val$inOutAnimation:Lc8/edb;


# direct methods
.method constructor <init>(Lc8/rfb;Lc8/edb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/rfb;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/pfb;->this$0:Lc8/rfb;

    iput-object p2, p0, Lc8/pfb;->val$inOutAnimation:Lc8/edb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lc8/pfb;->this$0:Lc8/rfb;

    iget-object v0, p0, Lc8/pfb;->val$inOutAnimation:Lc8/edb;

    invoke-virtual {v0}, Lc8/edb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lc8/rfb;->access$000(Lc8/rfb;Z)V

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
