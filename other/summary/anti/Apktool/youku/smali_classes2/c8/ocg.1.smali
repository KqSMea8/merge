.class public Lc8/ocg;
.super Landroid/content/BroadcastReceiver;
.source "WXText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qcg;->registerTypefaceObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qcg;


# direct methods
.method constructor <init>(Lc8/qcg;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lc8/ocg;->this$0:Lc8/qcg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    const-string/jumbo v4, "fontFamily"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "fontFamily":Ljava/lang/String;
    iget-object v4, p0, Lc8/ocg;->this$0:Lc8/qcg;

    invoke-static {v4}, Lc8/qcg;->access$000(Lc8/qcg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {v1}, Lc8/ngg;->getFontDO(Ljava/lang/String;)Lc8/Tfg;

    move-result-object v0

    .line 203
    .local v0, "fontDO":Lc8/Tfg;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc8/Tfg;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/ocg;->this$0:Lc8/qcg;

    invoke-virtual {v4}, Lc8/qcg;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 204
    iget-object v4, p0, Lc8/ocg;->this$0:Lc8/qcg;

    invoke-virtual {v4}, Lc8/qcg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Aeg;

    .line 205
    .local v2, "hostView":Lc8/Aeg;
    invoke-virtual {v2}, Lc8/Aeg;->getTextLayout()Landroid/text/Layout;

    move-result-object v3

    .line 206
    .local v3, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v0}, Lc8/Tfg;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 208
    const-string/jumbo v4, "WXText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Apply font family "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to paint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_1
    invoke-virtual {v2}, Lc8/Aeg;->invalidate()V

    .line 214
    .end local v2    # "hostView":Lc8/Aeg;
    .end local v3    # "layout":Landroid/text/Layout;
    :cond_1
    const-string/jumbo v4, "WXText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Font family "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .restart local v2    # "hostView":Lc8/Aeg;
    .restart local v3    # "layout":Landroid/text/Layout;
    :cond_2
    const-string/jumbo v4, "WXText"

    const-string/jumbo v5, "Layout not created"

    invoke-static {v4, v5}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
