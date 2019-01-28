.class public Lc8/Ftg;
.super Ljava/lang/Object;
.source "UploaderDependencyImpl.java"

# interfaces
.implements Lc8/jsg;


# static fields
.field static context:Landroid/content/Context;


# instance fields
.field private environment:Lc8/lsg;

.field private log:Lc8/nsg;

.field private statistics:Lc8/psg;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x0

    new-instance v1, Lc8/Gtg;

    invoke-static {}, Lc8/vsg;->retrieveContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Gtg;-><init>(Landroid/content/Context;)V

    new-instance v2, Lc8/Itg;

    invoke-direct {v2}, Lc8/Itg;-><init>()V

    new-instance v3, Lc8/Jtg;

    invoke-direct {v3}, Lc8/Jtg;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lc8/Ftg;-><init>(Landroid/content/Context;Lc8/lsg;Lc8/nsg;Lc8/psg;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Lc8/Gtg;

    invoke-direct {v0, p1}, Lc8/Gtg;-><init>(Landroid/content/Context;)V

    new-instance v1, Lc8/Itg;

    invoke-direct {v1}, Lc8/Itg;-><init>()V

    new-instance v2, Lc8/Jtg;

    invoke-direct {v2}, Lc8/Jtg;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/Ftg;-><init>(Landroid/content/Context;Lc8/lsg;Lc8/nsg;Lc8/psg;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/lsg;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lc8/lsg;

    .prologue
    .line 37
    new-instance v0, Lc8/Itg;

    invoke-direct {v0}, Lc8/Itg;-><init>()V

    new-instance v1, Lc8/Jtg;

    invoke-direct {v1}, Lc8/Jtg;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lc8/Ftg;-><init>(Landroid/content/Context;Lc8/lsg;Lc8/nsg;Lc8/psg;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/lsg;Lc8/nsg;Lc8/psg;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lc8/lsg;
    .param p3, "log"    # Lc8/nsg;
    .param p4, "statistics"    # Lc8/psg;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-static {}, Lc8/vsg;->retrieveContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/Ftg;->context:Landroid/content/Context;

    .line 47
    :goto_0
    iput-object p2, p0, Lc8/Ftg;->environment:Lc8/lsg;

    .line 48
    iput-object p3, p0, Lc8/Ftg;->log:Lc8/nsg;

    .line 49
    iput-object p4, p0, Lc8/Ftg;->statistics:Lc8/psg;

    .line 50
    return-void

    .line 44
    :cond_0
    sput-object p1, Lc8/Ftg;->context:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public getEnvironment()Lc8/lsg;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lc8/Ftg;->environment:Lc8/lsg;

    return-object v0
.end method

.method public getLog()Lc8/nsg;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Ftg;->log:Lc8/nsg;

    return-object v0
.end method

.method public getStatistics()Lc8/psg;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/Ftg;->statistics:Lc8/psg;

    return-object v0
.end method
