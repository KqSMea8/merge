.class public Lc8/ycg;
.super Ljava/lang/Object;
.source "WXWeb.java"

# interfaces
.implements Lc8/eeg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Acg;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Acg;


# direct methods
.method constructor <init>(Lc8/Acg;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lc8/ycg;->this$0:Lc8/Acg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/ycg;->this$0:Lc8/Acg;

    invoke-static {v0, p1, p2}, Lc8/Acg;->access$000(Lc8/Acg;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
