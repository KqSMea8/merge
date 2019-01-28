.class public Lc8/Myo;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static sApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/Myo;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static setApplication(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 18
    sput-object p0, Lc8/Myo;->sApplication:Landroid/app/Application;

    .line 19
    return-void
.end method
