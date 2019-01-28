.class public Lc8/LSb;
.super Lc8/ZSb;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ZSb",
        "<",
        "Lc8/YSb;",
        ">;"
    }
.end annotation


# static fields
.field public static final disableJitCompilation:Ljava/lang/String; = "Configuration.disableJitCompilation"

.field public static final enableANRCatch:Ljava/lang/String; = "Configuration.enableANRCatch"

.field public static final enableAllThreadCollection:Ljava/lang/String; = "Configuration.enableAllThreadCollection"

.field public static final enableDumpHprof:Ljava/lang/String; = "Configuration.enableDumpHprof"

.field public static final enableEventsLogCollection:Ljava/lang/String; = "Configuration.enableEventsLogCollection"

.field public static final enableExternalLinster:Ljava/lang/String; = "Configuration.enableExternalLinster"

.field public static final enableFinalizeFake:Ljava/lang/String; = "Configuration.enableFinalizeFake"

.field public static final enableLogcatCollection:Ljava/lang/String; = "Configuration.enableLogcatCollection"

.field public static final enableMainLoopBlockCatch:Ljava/lang/String; = "Configuration.enableMainLoopBlockCatch"

.field public static final enableNativeExceptionCatch:Ljava/lang/String; = "Configuration.enableNativeExceptionCatch"

.field public static final enableReportContentCompress:Ljava/lang/String; = "Configuration.enableReportContentCompress"

.field public static final enableSafeGuard:Ljava/lang/String; = "Configuration.enableSafeGuard"

.field public static final enableSecuritySDK:Ljava/lang/String; = "Configuration.enableSecuritySDK"

.field public static final enableUCNativeExceptionCatch:Ljava/lang/String; = "Configuration.enableUCNativeExceptionCatch"

.field public static final enableUIProcessSafeGuard:Ljava/lang/String; = "Configuration.enableUIProcessSafeGuard"

.field public static final enableUncaughtExceptionCatch:Ljava/lang/String; = "Configuration.enableUncaughtExceptionCatch"

.field public static final enableUncaughtExceptionIgnore:Ljava/lang/String; = "Configuration.enableUncaughtExceptionIgnore"

.field public static final eventsLogLineLimit:Ljava/lang/String; = "Configuration.eventsLogLineLimit"

.field public static final fileDescriptorLimit:Ljava/lang/String; = "Configuration.fileDescriptorLimit"

.field public static final mainLogLineLimit:Ljava/lang/String; = "Configuration.mainLogLineLimit"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 30
    invoke-direct {p0, v4}, Lc8/ZSb;-><init>(Z)V

    .line 31
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableUncaughtExceptionCatch"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 32
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableUncaughtExceptionIgnore"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 33
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableNativeExceptionCatch"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 34
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableUCNativeExceptionCatch"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 35
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableANRCatch"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 36
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableMainLoopBlockCatch"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 37
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableAllThreadCollection"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 38
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableLogcatCollection"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 39
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableEventsLogCollection"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 40
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableDumpHprof"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 41
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableExternalLinster"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 42
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableSafeGuard"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 43
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableUIProcessSafeGuard"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 44
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableFinalizeFake"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 45
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.disableJitCompilation"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 46
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.fileDescriptorLimit"

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 47
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.mainLogLineLimit"

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 48
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.eventsLogLineLimit"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 49
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableReportContentCompress"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 50
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableSecuritySDK"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 51
    return-void
.end method
