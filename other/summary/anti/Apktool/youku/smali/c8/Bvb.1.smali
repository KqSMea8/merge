.class public Lc8/Bvb;
.super Ljava/lang/Object;
.source "Elevator.java"

# interfaces
.implements Lc8/reg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ivb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ivb;


# direct methods
.method constructor <init>(Lc8/Ivb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ivb;

    .prologue
    .line 184
    iput-object p1, p0, Lc8/Bvb;->this$0:Lc8/Ivb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lc8/seg;IIII)V
    .locals 1
    .param p1, "scrollView"    # Lc8/seg;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lc8/Bvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$400(Lc8/Ivb;)Lc8/Hvb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lc8/Bvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$400(Lc8/Ivb;)Lc8/Hvb;

    move-result-object v0

    invoke-interface {v0}, Lc8/Hvb;->changed()V

    .line 190
    :cond_0
    return-void
.end method
