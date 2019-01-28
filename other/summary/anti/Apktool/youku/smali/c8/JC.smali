.class public Lc8/JC;
.super Ljava/lang/Object;
.source "WVServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/MC;->parseResult(Ljava/lang/Object;Lc8/ZB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/MC;


# direct methods
.method constructor <init>(Lc8/MC;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lc8/JC;->this$0:Lc8/MC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lc8/JC;->this$0:Lc8/MC;

    invoke-static {v0}, Lc8/MC;->access$1000(Lc8/MC;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, " \u54ce\u5466\u5582\uff0c\u88ab\u6324\u7206\u5566\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    return-void
.end method
