.class public Lc8/nZo;
.super Ljava/lang/Object;
.source "EggDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oZo;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oZo;


# direct methods
.method constructor <init>(Lc8/oZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oZo;

    .prologue
    .line 148
    iput-object p1, p0, Lc8/nZo;->this$0:Lc8/oZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    sget-object v2, Lc8/VLj;->context:Landroid/content/Context;

    const-string/jumbo v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 152
    .local v1, "mClipboardManager":Landroid/content/ClipboardManager;
    const-string/jumbo v2, "utdid"

    invoke-static {}, Lc8/bzo;->getUtdid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 153
    .local v0, "mClipData":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 154
    const-string/jumbo v2, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-static {v2}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 155
    return-void
.end method
