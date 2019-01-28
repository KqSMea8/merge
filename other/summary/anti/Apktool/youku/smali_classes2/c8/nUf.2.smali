.class public Lc8/nUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tUf;->dealPatchInfo(Lc8/EUf;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tUf;


# direct methods
.method constructor <init>(Lc8/tUf;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lc8/nUf;->this$0:Lc8/tUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lc8/nUf;->this$0:Lc8/tUf;

    invoke-static {v0}, Lc8/tUf;->access$300(Lc8/tUf;)Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "patch\u9488\u5bf9\u7684\u7248\u672c\u4e0e\u5f53\u524d\u7248\u672c\u53f7\u4e0d\u5339\u914d\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 777
    return-void
.end method
