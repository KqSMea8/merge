.class public Lc8/vPg;
.super Lc8/yPg;
.source "FontFamilyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zPg;->fetchFontResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zPg;


# direct methods
.method constructor <init>(Lc8/zPg;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zPg;
    .param p2, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 96
    iput-object p1, p0, Lc8/vPg;->this$0:Lc8/zPg;

    invoke-direct {p0, p2}, Lc8/yPg;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute([Lc8/uPg;)V
    .locals 1
    .param p1, "result"    # [Lc8/uPg;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/vPg;->this$0:Lc8/zPg;

    invoke-static {v0, p1}, Lc8/zPg;->access$000(Lc8/zPg;[Lc8/uPg;)V

    .line 100
    return-void
.end method
