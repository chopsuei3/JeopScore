.class public Lcom/google/appinventor/components/runtime/PhoneNumberPicker;
.super Lcom/google/appinventor/components/runtime/ContactPicker;
.source "PhoneNumberPicker.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, displays a list of the contacts\' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul><li> <code>ContactName</code>: the contact\'s name </li> <li> <code>PhoneNumber</code>: the contact\'s phone number </li> <li> <code>EmailAddress</code>: the contact\'s email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul></p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p><p>Picking is not supported on all phones.  If it fails, this component will show a notification.  This default error behavior can be overridden with the Screen.ErrorOccurred event handler.</p>"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static final EMAIL_INDEX:I = 0x3

.field private static final NAME_INDEX:I = 0x0

.field private static final NUMBER_INDEX:I = 0x1

.field private static final PERSON_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private phoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 72
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    .line 73
    return-void
.end method


# virtual methods
.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 100
    iget v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->requestCode:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 101
    const-string v0, "PhoneNumberPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received intent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, phoneUri:Landroid/net/Uri;
    const-string v0, "//contacts/phones"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v8, 0x0

    .line 109
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 114
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 115
    .local v7, contactId:I
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v7

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 116
    .local v6, cUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 117
    const/4 v0, 0x3

    invoke-virtual {p0, v8, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, emailId:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 119
    const-string v0, "PhoneNumberPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v6           #cUri:Landroid/net/Uri;
    .end local v7           #contactId:I
    .end local v10           #emailId:Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 134
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->AfterPicking()V

    .line 136
    .end local v1           #phoneUri:Landroid/net/Uri;
    :cond_2
    return-void

    .line 123
    .restart local v1       #phoneUri:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 127
    .local v9, e:Ljava/lang/Exception;
    const/16 v0, 0x453

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->puntContactSelection(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz v8, :cond_1

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
