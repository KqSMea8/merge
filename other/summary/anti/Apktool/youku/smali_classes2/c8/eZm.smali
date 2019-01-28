.class public Lc8/eZm;
.super Ljava/lang/Object;
.source "PopLayerWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iZm;->destroyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iZm;


# direct methods
.method constructor <init>(Lc8/iZm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iZm;

    .prologue
    .line 102
    iput-object p1, p0, Lc8/eZm;->this$0:Lc8/iZm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lc8/eZm;->this$0:Lc8/iZm;

    invoke-static {v0}, Lc8/iZm;->access$000(Lc8/iZm;)V

    .line 106
    return-void
.end method
