.class public Lc8/uWb;
.super Ljava/lang/Object;
.source "MethodTraceInitializer.java"

# interfaces
.implements Lc8/CWb;


# static fields
.field static sApplication:Landroid/app/Application;

.field public static sGodeye:Lc8/nWb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Lc8/nWb;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "godeye"    # Lc8/nWb;

    .prologue
    .line 23
    sput-object p1, Lc8/uWb;->sApplication:Landroid/app/Application;

    .line 24
    sput-object p2, Lc8/uWb;->sGodeye:Lc8/nWb;

    .line 27
    new-instance v0, Lc8/tWb;

    invoke-direct {v0}, Lc8/tWb;-><init>()V

    invoke-interface {p2, v0}, Lc8/nWb;->registerCommandController(Lc8/cWb;)V

    .line 28
    return-void
.end method
