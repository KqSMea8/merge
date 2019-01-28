.class public Lc8/Sdg;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vdg;->prompt(Ljava/lang/String;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vdg;

.field final synthetic val$callback:Lc8/EWf;

.field final synthetic val$cancelTitleFinal:Ljava/lang/String;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lc8/Vdg;Lc8/EWf;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lc8/Sdg;->this$0:Lc8/Vdg;

    iput-object p2, p0, Lc8/Sdg;->val$callback:Lc8/EWf;

    iput-object p3, p0, Lc8/Sdg;->val$cancelTitleFinal:Ljava/lang/String;

    iput-object p4, p0, Lc8/Sdg;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lc8/Sdg;->val$callback:Lc8/EWf;

    if-eqz v1, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    iget-object v2, p0, Lc8/Sdg;->val$cancelTitleFinal:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v1, "data"

    iget-object v2, p0, Lc8/Sdg;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lc8/Sdg;->val$callback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 243
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
