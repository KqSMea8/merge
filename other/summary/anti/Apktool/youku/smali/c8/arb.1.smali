.class public Lc8/arb;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Lc8/frb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/erb;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/erb;


# direct methods
.method constructor <init>(Lc8/erb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/erb;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/arb;->this$0:Lc8/erb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lc8/arb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$300(Lc8/erb;)Lc8/grb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/arb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$300(Lc8/erb;)Lc8/grb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/grb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/arb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$000(Lc8/erb;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
