.class public Lc8/dIf;
.super Ljava/lang/Object;
.source "LogCache.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryPrinter"
.end annotation


# instance fields
.field mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lc8/eIf;


# direct methods
.method constructor <init>(Lc8/eIf;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 345
    iput-object p1, p0, Lc8/dIf;->this$0:Lc8/eIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lc8/dIf;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 347
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lc8/dIf;->mStringBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lc8/dIf;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v0, p0, Lc8/dIf;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    return-void
.end method
