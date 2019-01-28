.class public Lc8/YWo;
.super Lc8/scg;
.source "RichText.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/XWo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Lc8/gXo;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPONENT_TYPE:Ljava/lang/String; = "yk-rich-text"


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 38
    instance-of v0, p2, Lc8/eXo;

    if-eqz v0, :cond_0

    .line 39
    check-cast p2, Lc8/eXo;

    .end local p2    # "node":Lc8/HYf;
    invoke-virtual {p2, p0}, Lc8/eXo;->setRichText(Lc8/YWo;)V

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 31
    instance-of v0, p2, Lc8/eXo;

    if-eqz v0, :cond_0

    .line 32
    check-cast p2, Lc8/eXo;

    .end local p2    # "dom":Lc8/HYf;
    invoke-virtual {p2, p0}, Lc8/eXo;->setRichText(Lc8/YWo;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lc8/YWo;->initComponentHostView(Landroid/content/Context;)Lc8/gXo;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/gXo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    new-instance v0, Lc8/gXo;

    invoke-direct {v0, p1}, Lc8/gXo;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "textView":Lc8/gXo;
    new-instance v1, Lc8/XWo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/XWo;-><init>(Lc8/YWo;Lc8/WWo;)V

    invoke-virtual {v0, v1}, Lc8/gXo;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    return-object v0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 116
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 122
    invoke-super {p0, p1, p2}, Lc8/scg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :pswitch_0
    return v0

    .line 116
    :sswitch_0
    const-string/jumbo v2, "fontSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "lineHeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1ebe99c5 -> :sswitch_1
        0x6ac9171 -> :sswitch_2
        0x15caa0f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .locals 1
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lc8/scg;->updateExtra(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lc8/YWo;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    .end local p1    # "extra":Ljava/lang/Object;
    :goto_0
    return-void

    .line 58
    .restart local p1    # "extra":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lc8/YWo;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/gXo;

    check-cast p1, Landroid/text/Layout;

    .end local p1    # "extra":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lc8/gXo;->setLayout(Landroid/text/Layout;)V

    goto :goto_0
.end method
