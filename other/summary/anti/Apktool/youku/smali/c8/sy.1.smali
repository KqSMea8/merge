.class public Lc8/sy;
.super Ljava/lang/ClassLoader;
.source "BundleArchiveRevision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uy;->checkDexValid(Ldalvik/system/DexFile;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uy;


# direct methods
.method constructor <init>(Lc8/uy;)V
    .locals 0
    .param p1, "this$0"    # Lc8/uy;

    .prologue
    .line 641
    iput-object p1, p0, Lc8/sy;->this$0:Lc8/uy;

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method
