.class public final Lcom/google/appinventor/components/runtime/Notifier;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Notifier.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that creates alert messages, popup dialogs, and log entries."
    iconName = "images/notifier.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Notifier"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->toastNow(Ljava/lang/String;)V

    return-void
.end method

.method private oneButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"

    .prologue
    .line 89
    const-string v1, "Notifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One button alert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 91
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier$1;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 99
    return-void
.end method

.method private textInputAlert(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "message"
    .parameter "title"
    .parameter "cancelable"

    .prologue
    .line 194
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 195
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 199
    .local v2, input:Landroid/widget/EditText;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 201
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 202
    const-string v3, "OK"

    new-instance v4, Lcom/google/appinventor/components/runtime/Notifier$5;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/Notifier$5;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 210
    if-eqz p3, :cond_0

    .line 211
    const-string v1, "CANCEL"

    .line 212
    .local v1, cancelButtonText:Ljava/lang/String;
    const/4 v3, -0x2

    const-string v4, "CANCEL"

    new-instance v5, Lcom/google/appinventor/components/runtime/Notifier$6;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/Notifier$6;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 221
    .end local v1           #cancelButtonText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 222
    return-void
.end method

.method private toastNow(Ljava/lang/String;)V
    .locals 8
    .parameter "message"

    .prologue
    const/16 v7, 0xa

    .line 254
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    const/16 v4, 0x16

    move v0, v4

    .line 256
    .local v0, fontsize:I
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 257
    .local v2, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v2}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 258
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, textView:Landroid/widget/TextView;
    const v4, -0xbbbbbc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 260
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    int-to-float v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 263
    .local v3, typeface:Landroid/graphics/Typeface;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 264
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 265
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 267
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 268
    return-void

    .line 254
    .end local v0           #fontsize:I
    .end local v1           #textView:Landroid/widget/TextView;
    .end local v2           #toast:Landroid/widget/Toast;
    .end local v3           #typeface:Landroid/graphics/Typeface;
    :cond_0
    const/16 v4, 0xf

    move v0, v4

    goto :goto_0
.end method

.method private twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "message"
    .parameter "title"
    .parameter "button1Text"
    .parameter "button2Text"
    .parameter "cancelable"

    .prologue
    .line 122
    const-string v2, "Notifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowChooseDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 125
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    const/4 v2, -0x1

    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$2;

    invoke-direct {v3, p0, p3}, Lcom/google/appinventor/components/runtime/Notifier$2;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p3, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    const/4 v2, -0x3

    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$3;

    invoke-direct {v3, p0, p4}, Lcom/google/appinventor/components/runtime/Notifier$3;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p4, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    if-eqz p5, :cond_0

    .line 146
    const-string v1, "Cancel"

    .line 147
    .local v1, cancelButtonText:Ljava/lang/String;
    const/4 v2, -0x2

    const-string v3, "Cancel"

    new-instance v4, Lcom/google/appinventor/components/runtime/Notifier$4;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Notifier$4;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    .end local v1           #cancelButtonText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 156
    return-void
.end method


# virtual methods
.method public AfterChoosing(Ljava/lang/String;)V
    .locals 3
    .parameter "choice"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 164
    const-string v0, "AfterChoosing"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public AfterTextInput(Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 230
    const-string v0, "AfterTextInput"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public LogError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 277
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public LogInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 297
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public LogWarning(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 287
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public ShowAlert(Ljava/lang/String;)V
    .locals 2
    .parameter "notice"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$7;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method public ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "button1Text"
    .parameter "button2Text"
    .parameter "cancelable"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public ShowTextDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "cancelable"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Notifier;->textInputAlert(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    return-void
.end method
