.class public Lc8/Qo;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Wo;


# direct methods
.method constructor <init>(Lc8/Wo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Wo;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/Qo;->this$0:Lc8/Wo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/Qo;->this$0:Lc8/Wo;

    invoke-virtual {v0}, Lc8/Wo;->populateOptionsMenu()V

    .line 62
    return-void
.end method
