.class public Lc8/eeo;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jeo;->refreshComplete(Landroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jeo;


# direct methods
.method constructor <init>(Lc8/jeo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jeo;

    .prologue
    .line 201
    iput-object p1, p0, Lc8/eeo;->this$0:Lc8/jeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lc8/eeo;->this$0:Lc8/jeo;

    invoke-virtual {v0}, Lc8/jeo;->reset()V

    .line 205
    return-void
.end method
