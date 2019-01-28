.class public Lc8/Yaf;
.super Lc8/cbf;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bbf;->iterator(Lc8/abf;)Lc8/cbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bbf;

.field final synthetic val$snapshot:Lc8/abf;


# direct methods
.method constructor <init>(Lc8/bbf;JLc8/abf;)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 160
    iput-object p1, p0, Lc8/Yaf;->this$0:Lc8/bbf;

    iput-object p4, p0, Lc8/Yaf;->val$snapshot:Lc8/abf;

    invoke-direct {p0, p2, p3}, Lc8/cbf;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected closeNativeObject(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lc8/cbf;->closeNativeObject(J)V

    .line 164
    iget-object v0, p0, Lc8/Yaf;->val$snapshot:Lc8/abf;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lc8/Yaf;->val$snapshot:Lc8/abf;

    invoke-virtual {v0}, Lc8/abf;->unref()V

    .line 168
    :cond_0
    iget-object v0, p0, Lc8/Yaf;->this$0:Lc8/bbf;

    invoke-virtual {v0}, Lc8/bbf;->unref()V

    .line 169
    return-void
.end method
