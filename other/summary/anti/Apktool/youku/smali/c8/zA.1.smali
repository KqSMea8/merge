.class public Lc8/zA;
.super Ljava/lang/Object;
.source "KernalBundleArchive.java"

# interfaces
.implements Lc8/JA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/AA;->release(Ljava/io/File;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/AA;

.field final synthetic val$success:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lc8/AA;[Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$1"    # Lc8/AA;

    .prologue
    .line 443
    iput-object p1, p0, Lc8/zA;->this$1:Lc8/AA;

    iput-object p2, p0, Lc8/zA;->val$success:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllFinish()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lc8/zA;->this$1:Lc8/AA;

    invoke-static {v0}, Lc8/AA;->access$100(Lc8/AA;)Lc8/KA;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KA;->close()V

    .line 462
    return-void
.end method

.method public onFailed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lc8/zA;->val$success:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    .line 447
    iget-object v0, p0, Lc8/zA;->this$1:Lc8/AA;

    iget-object v0, v0, Lc8/AA;->this$0:Lc8/BA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/BA;->access$002(Lc8/BA;[Ldalvik/system/DexFile;)[Ldalvik/system/DexFile;

    .line 448
    iget-object v0, p0, Lc8/zA;->this$1:Lc8/AA;

    invoke-static {v0}, Lc8/AA;->access$100(Lc8/AA;)Lc8/KA;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KA;->close()V

    .line 450
    return-void
.end method

.method public onFinish(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 454
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lc8/zA;->this$1:Lc8/AA;

    iget-object v0, v0, Lc8/AA;->this$0:Lc8/BA;

    iget-object v1, p0, Lc8/zA;->this$1:Lc8/AA;

    invoke-static {v1}, Lc8/AA;->access$100(Lc8/AA;)Lc8/KA;

    move-result-object v1

    invoke-virtual {v1}, Lc8/KA;->getDexFile()[Ldalvik/system/DexFile;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BA;->access$002(Lc8/BA;[Ldalvik/system/DexFile;)[Ldalvik/system/DexFile;

    .line 457
    :cond_0
    return-void
.end method
