.class public Lc8/pOf;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rOf;->applyEvent(Lc8/wxf;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/rOf;

.field final synthetic val$event:Lc8/wxf;


# direct methods
.method constructor <init>(Lc8/rOf;Lc8/wxf;)V
    .locals 0
    .param p1, "this$1"    # Lc8/rOf;

    .prologue
    .line 631
    iput-object p1, p0, Lc8/pOf;->this$1:Lc8/rOf;

    iput-object p2, p0, Lc8/pOf;->val$event:Lc8/wxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lc8/pOf;->this$1:Lc8/rOf;

    iget-object v1, p0, Lc8/pOf;->val$event:Lc8/wxf;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/rOf;->applyEvent(Lc8/wxf;Z)Z

    .line 635
    return-void
.end method
