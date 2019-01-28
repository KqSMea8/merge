.class public Lc8/xPg;
.super Ljava/lang/Object;
.source "FontFamilyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yPg;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yPg;

.field final synthetic val$finalResult:[Lc8/uPg;


# direct methods
.method constructor <init>(Lc8/yPg;[Lc8/uPg;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yPg;

    .prologue
    .line 240
    iput-object p1, p0, Lc8/xPg;->this$0:Lc8/yPg;

    iput-object p2, p0, Lc8/xPg;->val$finalResult:[Lc8/uPg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lc8/xPg;->this$0:Lc8/yPg;

    iget-object v1, p0, Lc8/xPg;->val$finalResult:[Lc8/uPg;

    invoke-virtual {v0, v1}, Lc8/yPg;->onPostExecute([Lc8/uPg;)V

    .line 244
    return-void
.end method
