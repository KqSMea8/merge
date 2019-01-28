.class public Lc8/Zaf;
.super Lc8/abf;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bbf;->getSnapshot()Lc8/abf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bbf;


# direct methods
.method constructor <init>(Lc8/bbf;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 176
    iput-object p1, p0, Lc8/Zaf;->this$0:Lc8/bbf;

    invoke-direct {p0, p2, p3}, Lc8/abf;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected closeNativeObject(J)V
    .locals 4
    .param p1, "ptr"    # J

    .prologue
    .line 178
    iget-object v0, p0, Lc8/Zaf;->this$0:Lc8/bbf;

    invoke-virtual {v0}, Lc8/bbf;->getPtr()J

    move-result-wide v0

    invoke-virtual {p0}, Lc8/Zaf;->getPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lc8/bbf;->access$000(JJ)V

    .line 179
    iget-object v0, p0, Lc8/Zaf;->this$0:Lc8/bbf;

    invoke-virtual {v0}, Lc8/bbf;->unref()V

    .line 180
    return-void
.end method
